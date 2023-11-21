/*

 * app_xSSDAC_SD_test.xc
 *
 *  Created on: 2021/05/23
 *      Author: takaaki
 */

#include <xs1.h>
#include "gpio_access.h"
#include <platform.h>
#define DELAY 50000000
on tile[0] : out port p_gpio    = PORT_USER_GPIO;





int main(){
    timer t;
    unsigned time;
    t :>time;

    while(1){
        //ClipIndicator(0);

        unsigned psave = peek(p_gpio);
        p_gpio <: psave || (1 << 4);

        time += DELAY;
        t when timerafter(time) :> void;

        //ClipIndicator(1);
        psave = peek(p_gpio);
        p_gpio <: psave && ~(1 << 4);

        time += DELAY;
        t when timerafter(time) :> void;
    }
}
