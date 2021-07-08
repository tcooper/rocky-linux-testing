# Testcase Anaconda Custom Disk Partitioning


## Description
This test case tests the installer's ability to use custom partitioning.


## How to test
- Boot the installer using any available means
- Make sure your disk is not set to be encrypted
- Select the appropriate disk, and use the custom partitioning screen to create disk layout
- Proceed with the installation


## Expected Results
- Anaconda should succesfully create, destroy and assign mount points to partitions of any specified size using most commonly-used filesystem types
- Anaconda should reject obviously invalid operations without crashing
- The system should install successfully
- After install, the system initiates boot properly
