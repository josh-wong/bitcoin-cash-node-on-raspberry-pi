# Preparing your device

This tutorial assumes that you have already installed and configured Ubuntu Desktop on your Raspberry Pi to your liking and have mounted the SSD to your Pi.

1. **For details on installing Ubuntu Desktop (64-bit) on your Raspberry Pi**, please see [How to install Ubuntu Desktop on Raspberry Pi 4](https://ubuntu.com/tutorials/how-to-install-ubuntu-desktop-on-raspberry-pi-4#1-overview).
2. **For details on automounting your SSD in Ubuntu**, please see [How to properly automount a drive in Ubuntu Linux](https://www.techrepublic.com/article/how-to-properly-automount-a-drive-in-ubuntu-linux/).

## Check your Ubuntu architecture

Before you proceed, let's make sure you're running the aarch64 version of Ubuntu on the Raspberry Pi. Run the following command in **Terminal**.

`uname -m`

If **aarch64** is not output, please follow the instructions in How to install Ubuntu Desktop on Raspberry Pi 4 and make sure to select the 64-bit option of Ubuntu Desktop.

## Update and upgrade your Raspberry Pi and Ubuntu

After setting up Ubuntu Desktop and automounting your SSD, let's update and upgrade your Raspberry Pi and Ubuntu by running the following commands in **Terminal**.

`sudo apt update && sudo apt upgrade -y`

Wait for updates and upgrades to install. If prompted, reboot your device and then proceed with this tutorial.

## Set a static IP address

We need to configure a static IP address and then set up port forwarding so that our Raspberry Pi can continue to communicate with other nodes even if we reboot the device. 

For instructions on how to set a static IP address in Ubuntu, see Method 1 (command line) or Method 2 (GUI) in [How to Assign Static IP Address on Ubuntu Linux](https://itsfoss.com/static-ip-ubuntu/).

## Allow connections to port 8333

In our router, we need to allow connections to port 8333. This is the port that allows the node to sync properly. 

For details on how to allow port forwarding, please consult your router's manual. You typically need to include your device's static IP address and the port number (8333) in the Port Forwarding or NAT Forwarding setting, depending on your router.

!!! warning
    
    If you don't configure a static IP address, you may cause connection issues when you restart or reboot your Raspberry Pi. By setting a static IP address, we can make sure the same IP address is still allowing communication from port 8333.

## Turn off swap

Turning off swap may or may not cause issues with starting Bitcoin Cash Node. Because of this, we should turn off swap.

!!! note
    
    You can experiment with this as necessary, but there may be issues with the Raspberry Pi becoming unresponsive when swap is turned on.

First, let's check if swap is running by entering the following command in Terminal.

`sudo swapon --show`

If Terminal replies with the path to the swap file and its size, then swap is on.

To turn off swap and delete the file, run the following commands.

`sudo swapoff -a`
`sudo rm /swapfile`
`sudo nano /etc/fstab`

Delete the line that starts with "/swapfile".> /swap.img       none    swap    sw      0       0

Confirm that the swap is off by running the following command.

`sudo swapon --show`

Terminal should return no response. If Terminal returns a response, try turning off the swap again and rebooting your device.
