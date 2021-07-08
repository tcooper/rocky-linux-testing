# Testcase Boot To Anaconda With Boot ISO

## Description
This is to verify that the Anaconda installer starts correctly when booting from Rocky-<version>-boot.iso.


## Setup
Prepare your system for booting a Rocky-<version>-boot.iso image. This may involve writing the image to a USB key, mounting it as virtual media via out-of-band management network, or mounting it in hypervisor.


## How to test
- Boot the system from the prepared optical or USB media.
- In the boot menu select the appropriate option to boot the installer.


## Expected Results
- Graphical boot menu is displayed for users to select install options. Navigating the menu and selecting entries must work. If no option is selected, the installer should load after a reasonable timeout.
- System boots into the Anaconda installer.
