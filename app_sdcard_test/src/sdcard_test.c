// Copyright (c) 2011, XMOS Ltd., All rights reserved
// This software is freely distributable under a derivative of the
// University of Illinois/NCSA Open Source License posted in
// LICENSE.txt and at <http://github.xcore.com/>

/*
 ============================================================================
 Name        : sdcard_test
 Description : SD card host driver test
 ============================================================================
 */

#include <stdio.h> /* for the printf function */
#include "ff.h"    /* file system routines */
#include "timing.h"
#include "diskio.h"

FIL Fil;                /* File object */

#define NUM_BLOCK 40
BYTE Buff[512*NUM_BLOCK]; /* File read buffer (40 SD card blocks) */
BYTE Buff2[512*NUM_BLOCK]; /* File read buffer (40 SD card blocks) */

void die(FRESULT rc) /* Stop with dying message */
{
    printf("\nFailed with rc=%u.\n", rc);
    for(;;);
}

int sdcard_test(void)
{
    FRESULT rc;                     /* Result code */
    UINT bw, br, i;
    unsigned int T;

    for( i = 0; i < sizeof(Buff); i++) Buff[i] = i + i / 512; // fill the buffer with some data

    FATFS *Fatfs;
    f_mount(0, Fatfs);             /* Register volume work area (never fails) for SD host interface #0 */
    {
        DWORD fre_clust, fre_sect, tot_sect;

        /* Get volume information and free clusters of drive 0 */
        //rc = f_getfree("0:", &fre_clust, &fs);
        rc = f_getfree("0:", &fre_clust, &Fatfs);
        if(rc) die(rc);

        /* Get total sectors and free sectors */
        //tot_sect = (fs->n_fatent - 2) * fs->csize;
        tot_sect = (Fatfs->n_fatent - 2) * Fatfs->csize;
        //fre_sect = fre_clust * fs->csize;
        fre_sect = fre_clust * Fatfs->csize;

        /* Print free space in unit of KB (assuming 512 bytes/sector) */
        printf("%lu KB total drive space.\n%lu KB available.\n",fre_sect / 2, tot_sect / 2);
    }

    /****************************/

    printf("\nDeleting file Data.bin if existing...");
    rc = f_unlink ("Data.bin");    /* delete file if exist */
    if( FR_OK == rc) printf("deleted.\n");
    else printf("done.\n");

    /****************************/

    printf("\nCreating a new file Data.bin...");
    rc = f_open(&Fil, "Data.bin", FA_WRITE | FA_CREATE_ALWAYS);
    if(rc) die(rc);
    printf("done.\n");

    printf("\nWriting data to the file...");
    T = get_time();
    rc = f_write(&Fil, Buff, sizeof(Buff), &bw);
    T = get_time() - T;
    if(rc) die(rc);
    printf("%d bytes written. Write rate: %dKBytes/Sec\n", bw, (bw*100000)/T);

    printf("\nClosing the file...");
    rc = f_close(&Fil);
    if(rc) die(rc);
    printf("done.\n");

    /****************************/

    printf("\nOpening an existing file: Data.bin...");
    rc = f_open(&Fil, "Data.bin", FA_READ);
    if(rc) die(rc);
    printf("done.\n");

    printf("\nReading file content...");
    T = get_time();
    rc = f_read(&Fil, Buff, sizeof(Buff), &br);
    T = get_time() - T;
    if(rc) die(rc);
    printf("%d bytes read. Read rate: %dKBytes/Sec\n", br, (br*100000)/T);

    printf("\nClosing the file...");
    rc = f_close(&Fil);
    if(rc) die(rc);
    printf("done.\n");


    /****************************/
    DIR dir;                        /* Directory object */
    FILINFO fno;                    /* File information object */
#if _USE_LFN
static char lfn[_MAX_LFN + 1];
    fno.lfname = lfn;
    fno.lfsize = sizeof(lfn);
#endif

    printf("\nOpen root directory.\n");
    rc = f_opendir(&dir, "/");
    if(rc) die(rc);

    printf("\nDirectory listing...\n");
    for(;;)
    {
        rc = f_readdir(&dir, &fno);    /* Read a directory item */
        if(rc || !fno.fname[0]) break; /* Error or end of dir */

        printf("\nreaddir sucess...");
        if(fno.fattrib & AM_DIR) printf("   <dir>  %s\n", fno.fname);
        else printf("%8d  %s\n", fno.fsize, fno.fname);
    }
    if(rc) die(rc);

    /****************************/

    printf("\nTest completed.\n");
    return 0;
}

extern DRESULT disk_write(BYTE IfNum, const BYTE buff[],DWORD sector, BYTE count);
extern DRESULT disk_read(BYTE IfNum, BYTE buff[], DWORD sector, BYTE count);
extern DSTATUS disk_initialize(BYTE IfNum);

int raw_access_test(void)
{
    unsigned int T, i;
    DRESULT R1;

    for( i = 0; i < sizeof(Buff); i++)
    {
        Buff[i] = i; // fill the buffer with some data
        Buff2[i] = 0;
    }

    R1 = disk_initialize(0); // initialize interface 0
    if(R1 != RES_OK) printf("\nInit Failed");

    /* raw access write speed test */
    T = get_time();
    disk_write(0, Buff, 10, NUM_BLOCK); // write NUM_BLOCK blocks (512bytes each) to interface 0 starting from block 10
    T = get_time() - T;
    printf("\n%d bytes written. Write rate: %dKBytes/Sec", sizeof(Buff), (sizeof(Buff)*100000)/T);

    /* raw access read speed test */
    T = get_time();
    disk_read(0, Buff2, 10, NUM_BLOCK); // read NUM_BLOCK blocks (512bytes each) from interface 0 starting from block 10
    T = get_time() - T;
    printf("\n%d bytes read. Read rate: %dKBytes/Sec", sizeof(Buff), (sizeof(Buff)*100000)/T);

    for( i = 0; i < /*sizeof(Buff)*/ 16 ; i++)
    {
        if (Buff[i] != Buff2[i] ){
            printf("\nread data error position: %d, write: %x, read %x", i, Buff[i], Buff2[i]);
        }
    }
    printf("\ndone");
    return 0;
}
