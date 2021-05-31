# bitcoin-cash-node-on-raspberry-pi
This tutorial describes how to install and run a Bitcoin Cash Node on a Raspberry Pi 4 running the 64-bit Ubuntu Desktop 21.04. This setup focuses on uses the Bitcoin Cash Node graphical user interface (GUI) so that we can visualize processes on the blockchain and our Bitcoin Cash wallet transactions.<br>
These instructions are intended for those who have basic knowledge of the Ubuntu environment and familiarity with Linux commands. Therefore, this article will not describe steps unrelated to setting up the Bitcoin Cash Node.<br>

## Contents
* Introduction
  * Benefits of running a Bitcoin Cash Node
* Prerequisites
* Preparing your Raspberry Pi
  *  Update and upgrade the system
* Setting up Bitcoin Cash Node
  * Download and extract Bitcoin Cash Node
  * Install Bitcoin Cash Node
  * Configure Bitcoin Cash Node
* Custodial
  * Create a password for your wallet
  * Back up your wallet
* Conclusion

## Introduction
Bitcoin Cash Node is a node and wallet implementation for the Bitcoin Cash network. It downloads and, by default, stores the entire history of Bitcoin Cash transactions, which requires a few hundred gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.<br>

### Benefits of running a Bitcoin Cash Node
* Promote electronic peer-to-peer payments through active involvement.
* Contribute to the Bitcoin Cash network by letting others to use your node to broadcast transactions.
* Further decentralize the Bitcoin Cash blockchain, thereby improving reliability and security.
* Improve your understanding of how the blockchain technology of a popular cryptocurrency works.
* Be part of the growing Bitcoin Cash community.

## Prerequisites
- [ ] Raspberry Pi 4 (4 GB of RAM or more)
- [ ] Ubuntu Desktop 21.04 (RPi 4/400) (64-bit)
- [ ] Micro USB-C power cable
- [ ] microSD card (32 GB or more)
- [ ] External SSD (500 GB or more)
- [ ] Micro HDMI cable
- [ ] Monitor with an HDMI interface
- [ ] Keyboard (USB or Bluetooth)
- [ ] USB mouse (USB or Bluetooth)
- [ ] Reliable Internet connection
- [ ] Raspberry Pi case with a GPIO fan and heat sinks (recommended)
> Note that the Bitcoin Cash blockchain is approximately **164 GB** as of **June 1, 2021**, and is only expected to grow. Be sure your SSD is large enough to accommodate the growing blockchain if you want to keep verifying transactions for the foreseeable future on your Pi.<br>

## Preparing your Raspberry Pi
This tutorial assumes that you have already installed and configured Ubuntu Desktop 21.04 on your Raspberry Pi to your liking and have mounted the SSD to your Pi.
* **For details on installing the 64-bit Ubuntu Desktop 21.04 on your Raspberry Pi**, please see How to install Ubuntu Desktop on Raspberry Pi 4.
* **For details on automounting your SSD in Ubuntu**, please see How to properly automount a drive in Ubuntu Linux.
  * Be sure to give your SSD a unique name since we that's where the Bitcoin Cash Node will be installed.

### Check your Ubuntu architecture
Before we proceed, let's make sure that we're running the aarch64 version of Ubuntu on the Raspberry Pi. Run the following command in **Terminal**.<br><br>
```uname -m```<br><br>
If **aarch64** is not output, please follow the instructions in How to install Ubuntu Desktop on Raspberry Pi 4 and make sure to select the 64-bit option of Ubuntu Desktop.<br>

### Update and upgrade the system
After setting up Ubuntu Desktop 21.04 and automounting your SSD, let's update and upgrade the system by running the following commands in **Terminal**.<br><br>
```sudo apt-get update```<br><br>
```sudo apt-get upgrade```<br><br>

## Setting up Bitcoin Cash Node

### Download and extract the Bitcoin Cash Node package
Using a web browser on your Raspberry Pi, go to the following **Download** page on the Bitcoin Cash Node website.<br>
Under **Linux**, download the **AARCH 64 (tar)** package the home directory on your mounted SSD. Downloading this compressed package should take about 1 minute.<br>
DOWNLOAD PAGE SCREENSHOT WITH SAVE AS WINDOW<br>
After the compressed package finishes downloading, we need to extract the compressed package.<br>
To do so, let's open **Terminal** and go to the directory where we downloaded the package to. Be sure to replace **SSD-directory-containing-downloaded-package** in the command below with the directory where we saved the compressed package to.<br><br>
```cd /<SSD-directory-containing-downloaded-package>```<br><br>
Next, let's extract the compressed package. When running the following command in **Terminal**, be sure to replace **version-number-downloaded** with the version number that matches the package you downloaded.<br><br>
```sudo tar -xvzf bitcoin-cash-node-<version-number-downloaded>-aarch64-linux-gnu.tar.gz```<br><br>
  
### Run Bitcoin Cash Node
Now that we've extracted the Bitcoin Cash Node package, let's run the software and start downloading the transactions within the blockchain to your node.<br>
Downloading all the transactions in the blockchain will take a while. You may want to start the Bitcoin Cash Node software a couple hours before going to bed, as you may experience a slow Internet connection.<br>
To start the Bitcoin Cash Node software, let's first go back to the home directory by running the following command in **Terminal**.<br><br>
```cd```<br><br>
Then, let's run the Bitcoin Cash Node software by running the following command in Terminal. Be sure to replace **path-to-Bitcoin-Cash-Node-directory-on-SSD** in the command below with the directory where you extracted the Bitcoin Cash Node to on your SSD drive.<br><br>
```sudo <path-to-Bitcoin-Cash-Node-directory-on-SSD>/bin/bitcoin-qt```<br><br>
By going back to the home directory first, we can see the complete directory path for starting the Bitcoin Cash Node software and easily save the command for running the software quickly if it stops running for some reason.<br>
The Bitcoin Cash Node software then prompts us to specify where to download the blockchain transactions to.<br>
SCREENSHOT OF PROMPT<br>
Open a new **Terminal** window, let's create a new directory to store the blockchain data. Run the following command will create a directory called "blockchain-data" in the Bitcoin Cash Node directory on our SSD.<br>
Click "" and go to directory containing the "blockchain-data" directory that we previously created. Select that folder and click "". Then, click "" to confirm.<br>
SCREENSHOT OF SELECTION SCREENS<br>
The Bitcoin Cash Node software will then begin downloading transactions. This will take hours or days, depending on your Internet connection speed.<br>
SCREENSHOT OF SOFTWARE SYNCING TRANSACTIONS<br>
After all the blockchain transactions have finished downloading to your SSD, your node will automatically start verifying transactions on the Bitcoin Cash blockchain.<br>
  
## Setting up your Bitcoin Cash wallet
Our Bitcoin Cash wallet has already been created at this point, so let's secure it with a password and back it up.<br>
> The instructions in this section are very important. Neglecting to secure your wallet with a password and backing it up could result in you losing the Bitcoin Cash that you receive from others in your wallet.<br>
  
### Create a password for your wallet

### Back up your wallet

### Optional: Receiving Bitcoin Cash in our wallet

## Conclusion
We now have a full Bitcoin Cash Node on our Raspberry Pi running Ubuntu Desktop 21.04. Additionally, we can send and receive Bitcoin Cash to our wallet through the same blockchain and network of nodes that we are set up to support.

