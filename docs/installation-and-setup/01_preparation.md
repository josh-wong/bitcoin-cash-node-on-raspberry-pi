# Preparing our device

This tutorial assumes that we have already installed and configured Ubuntu Desktop on our Raspberry Pi to our liking and have mounted the SSD to our Raspberry Pi.

1. **For details on installing Ubuntu Desktop (64-bit) on your Raspberry Pi**, please see [How to install Ubuntu Desktop on Raspberry Pi 4](https://ubuntu.com/tutorials/how-to-install-ubuntu-desktop-on-raspberry-pi-4#1-overview).
2. **For details on automounting your SSD in Ubuntu**, please see [How to properly automount a drive in Ubuntu Linux](https://www.techrepublic.com/article/how-to-properly-automount-a-drive-in-ubuntu-linux/).

## Check our Ubuntu architecture

Before we proceed, let's make sure we're running the aarch64 version of Ubuntu on our Raspberry Pi. Run the following command in **Terminal**.

```console
uname -m
```

If `aarch64` is not output, please follow the instructions in [How to install Ubuntu Desktop on Raspberry Pi 4](https://ubuntu.com/tutorials/how-to-install-ubuntu-desktop-on-raspberry-pi-4#1-overview) and make sure to select the 64-bit option of Ubuntu Desktop.

## Update and upgrade your Raspberry Pi and Ubuntu

After setting up Ubuntu Desktop and automounting your SSD, let's update and upgrade your Raspberry Pi and Ubuntu by running the following commands in **Terminal**.

```console
sudo apt update && sudo apt upgrade -y
```

Wait for updates and upgrades to install. If prompted, reboot your device and then proceed with this tutorial.

## Set a static IP address

We need to configure a static IP address and then set up port forwarding so that our Raspberry Pi can continue to communicate with other nodes even if we reboot the device.

For instructions on how to set a static IP address in Ubuntu, see Method 1 (command line) or Method 2 (GUI) in [How to Assign Static IP Address on Ubuntu Linux](https://itsfoss.com/static-ip-ubuntu/).

## Allow connections to port 8333

In our router, we need to allow connections to port 8333. This is the port that allows the node to sync properly.

For details on how to allow port forwarding, please consult your router's manual. You typically need to include your device's static IP address and the port number (8333) in the Port Forwarding or NAT Forwarding setting, depending on your router.

!!! warning
    
    If you don't configure a static IP address, you may encounter connection issues when you restart or reboot your Raspberry Pi. By setting a static IP address, you can make sure the same IP address is still allowing communication from port 8333.

## Turn on swap

We need our Bitcoin Cash Node to continue running if the RAM on our Raspberry Pi gets full. To address this, we need to enable swap on our device.

For instructions on how to check if swap is enabled and configure swap appropriately, see [How to Add Swap Space on Ubuntu 20.04](https://www.cloudbooklet.com/how-to-add-swap-space-on-ubuntu-20-04/).

!!! note
    
    You can experiment with this as necessary, but the Raspberry Pi might become unresponsive if swap is turned off or does not have enough RAM allocated.
