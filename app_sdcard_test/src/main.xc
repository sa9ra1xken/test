/**
 * @file main.xc
 * @brief
 * @author Takaaki sakurai
 *
 **/
#include <syscall.h>
#include <platform.h>
#include <xs1.h>
#include <xclib.h>
#include <print.h>
#include "customdefines.h"
#include <stdio.h>

#ifdef XSCOPE
#include <xscope.h>
#endif

#define SDC_CARD_TEST

on tile[AUDIO_IO_TILE]: out port tp0 = PORT_TP23_SOLVER; // debug purpose
on tile[AUDIO_IO_TILE]: out port tp1 = PORT_TP24_INTERPOLATOR; // debug purpose
on tile[AUDIO_IO_TILE]: out port tp2 = PORT_TP25; // debug purpose

int sdcard_test();
int raw_access_test(void);
void sdcard_play(chanend c_handshake, chanend c_play_control);
void AudioHwInit(chanend ?c_codec);
void FuncGen(unsigned int fsample, unsigned int freq, streaming chanend c_out);
void decoupler(chanend c_buf_control, streaming chanend c_out);

void thread_speed()
{
#ifdef FAST_MODE
#warning Building with fast mode enabled
    set_thread_fast_mode_on();
#else
    set_thread_fast_mode_off();
#endif
}

void dispay_controller();

int main(){
    par{
        on tile[SDC_TILE]:
        par{
            //sdcard_test();
            //raw_access_test();
            {
                #define DELAY 10000000 //100mS
                timer t;
                unsigned time;
                t :> time;
                printf("\nidling...");
                fflush(stdout);
                while(1){
                    time += DELAY;
                    t when timerafter(time) :> void;
                }
            }
        }
    }
return 0;
}
