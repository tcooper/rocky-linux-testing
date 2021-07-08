# Testcase Boot To Anaconda With Boot ISO

## Description
This is to verify that the Anaconda installer starts correctly when booting from `Rocky-<version>-<arch>-boot.iso`.


## Setup
Prepare your system for booting a `Rocky-<version>-<arch>-boot.iso` image. This may involve writing the image to a USB key, mounting it as virtual media via out-of-band management network, or adding it to a virtual machine in a hypervisor.


## How to test

1. Boot the system from the prepared media.
2. In the boot menu select the appropriate option to boot the installer.


## Expected Results
- After step 1. is complete the initial boot screen will be display with a menu allowing you to select install options. Navigating the menu and selecting entries must work. If no option is selected, the Anaconda GUI installer should load after a reasonable timeout.
- System boots into the Anaconda installer.
