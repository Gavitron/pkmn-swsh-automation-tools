# Nintendo Switch Automation Tools;
Emulate a Switch Pro controller with an AVR Atmega that supports USB Client.  Compatibiilty largely depends on the underlying [LUFA support](http://www.fourwalledcubicle.com/files/LUFA/Doc/120219/html/_page__a_v_r8_support.html)

Currently known to work on:
 - Arduino Pro Micro
 - Arduino Uno R3
 - Teensy 2.0++

## Breath of The Wild
### Mash the A button `repeater.hex`
*Automatically spams the A button forever.  Great for duped item glitches.*

1. setup your game to where you are about to start pressing *A*
2. go into the **Change Grip/Order** window on your Switch Homescreen and press nothing
3. plug in the device

## Pokémon Sword & Shield
#### Watts Farm `wattsfarmer.hex`
*Automatically farms Watts*

1. walk to a den and throw an Wishing Piece in it
2. use the date spoofing exploit until the den glows red (don't go in yet!)
3. go into the **Change Grip/Order** window on your Switch Homescreen and press nothing
4. plug in the device

#### Masterballs `masterballs.hex`
*Automatically farms Masterballs*

1. Enable the VS date spam exploit
2. go into a Pokécenter right in front of the computer
3. make sure you can play the lottery today (do not play yet)
4. set you switch clock settigns to manual mode
5. go into the **Change Grip/Order** window on your Switch Homescreen and press nothing
6. plug in the device

#### Shiny breeding `wildareabreeding.hex`
*Automatically farm Shiny fossil Pokemon*

* open wildareabreeding.c in src folder
* change value at line 62 `#define cycles`to correct amount and save

1. fly to the daycare in the wild area
2. your party needs to be full and in the first slot should be a Pokémon with the **Flame Body** ability
3. selection in menu needs to hover the map button
4. exit the menu
5. go into the **Change Grip/Order** window on your Switch Homescreen and press nothing
6. plug in the device

#### Release a full box of Pokémon `releasebox.hex`
*Because they want to be free.*

1. open the box you want to release
2. go into the **Change Grip/Order** window on your Switch Homescreen and press nothing
3. plug in the device

#### repeat-a usage `repeat-a.hex`
*repeat-a just spams the A button. You can use it to farm Fossils at the Digging Duo and/or hunting Shiny Fossils at Route 6*

1. setup your game to where you are about to start pressing *A*
2. go into the **Change Grip/Order** window on your Switch Homescreen and press nothing
3. plug in the device

-----

*In case you see issues with controller conflicts while in docked mode, try using a USB-C to USB-A adapter in handheld mode. In dock mode, changes in the HDMI connection will briefly make the Switch not respond to incoming USB commands, skipping parts of the sequence. These changes may include turning off the TV, or switching the HDMI input. (Switching to the internal tuner will be OK, if this doesn't trigger a change in the HDMI input.)*

**This repository has been tested using an Arduino Pro Micro, an Arduino Uno R3 and Teensy++ 2.0.**

#### Compiling and Flashing onto the Arduino Pro Micro on OSX
download & install [AVR CrossPack](https://www.obdev.at/products/crosspack/index.html)

clone this repo: 
`git clone https://github.com/Gavitron/switch-automation-tools.git --recursive`

compile everything
`make repeater`

flash the hex file onto the pro micro
`avrdude -patmega32u4 -cavr109 -P/dev/tty.usbmodem* -b57600 -D -Uflash:w:repeater.hex`


#### Compiling and Flashing onto the Teensy++ 2.0
Go to the Teensy website and download/install the [Teensy Loader application](https://www.pjrc.com/teensy/loader.html). For Linux, follow their instructions for installing the [GCC Compiler and Tools](https://www.pjrc.com/teensy/gcc.html). For Windows, you will need the [latest AVR toolchain](https://www.microchip.com/mplab/avr-support/avr-and-arm-toolchains-c-compilers). See [this issue](https://github.com/LightningStalker/Splatmeme-Printer/issues/10) and [this thread](http://gbatemp.net/threads/how-to-use-shinyquagsires-splatoon-2-post-printer.479497/) on GBAtemp for more information. (Note for Mac users - the AVR MacPack is now called AVR CrossPack. If that does not work, you can try installing `avr-gcc` with `brew`.)

LUFA has been included as a git submodule, so cloning the repo must be done with the --recursive flag.

will put LUFA in the right directory.

Now you should be ready to rock. Open a terminal window in the `pkmn-swsh-automation-tools` directory, type `make`, and hit enter to compile. If all goes well, the printout in the terminal will let you know it finished the build! Follow the directions on flashing `wattsfarmer.hex`/`masterballs.hex`/`repeat-a.hex`/`wildareabreeding.hex`/`releasebox.hex` onto your Teensy, which can be found page where you downloaded the Teensy Loader application.

#### Thanks

Shiny Quagsire for his [Splatoon post printer](https://github.com/shinyquagsire23/Switch-Fightstick) and progmem for his [original discovery](https://github.com/progmem/Switch-Fightstick).
bertrandom for his [snowball thrower](https://github.com/bertrandom/snowball-thrower) and all the modifications.
Jarlave for their [base for this project](https://github.com/jarlave/pkmn-swsh-automation-tools)
Bowarcky for *their* [updates to Jarlave](https://github.com/bowarcky/pkmn-swsh-automation-tools)
