# How to upgrade Bitcoin Cash Node

## Download and extract the Bitcoin Cash Node package

Open a web browser on your Raspberry Pi, and go to the **[Download](https://bitcoincashnode.org/en/download.html)** page on the Bitcoin Cash Node website.

Make sure the latest version of BCHN is selected. Under **Linux**, download the **AARCH 64 (tar)** package to the Downloads directory on your device. Downloading this compressed package should take about 1 minute.
https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/images/bitcoin_cash_node_download.png?raw=true

After the compressed package finishes downloading, let's move the compressed file to the SSD. To do so, open **Terminal** and run the following command. Be sure to replace **/<new-version-number/>** with the version number that matches the package we just downloaded.

`sudo mv Downloads/bitcoin-cash-node-<new-version-number>-aarch64-linux-gnu.tar.gz /<SSD-directory-containing-downloaded-package>` 

Next, let's go to the SSD directory by running the following command. Be sure to replace **/<SSD-directory-containing-downloaded-package/>** in the command below with the directory where you saved the compressed package to.

 `cd /<SSD-directory-containing-downloaded-package>`

Now, let's extract the compressed package. Let's open **Terminal** and run the following command. Be sure to replace **/<new-version-number/>** with the version number that matches the package you downloaded.

`sudo tar -xvzf bitcoin-cash-node-<new-version-number>-aarch64-linux-gnu.tar.gz`

The files from the newer version of Bitcoin Cash Node will be extracted to the SSD. We don't need the compressed package anymore, so let's remove it by running the following command in **Terminal**. Be sure to replace **/<new-version-number/>** with the version number that matches the package you downloaded.

`sudo rm bitcoin-cash-node-<new-version-number>-aarch64-linux-gnu.tar.gz`

Now that we have our new Bitcoin Cash Node files extracted, let's move the blockchain data to the upgraded version of the Bitcoin Cash Node.

## Move our previously downloaded blockchain data

Since we've already been running Bitcoin Cash Node on an earlier version, we don't need to completely download the blockchain data again. Instead, we can move the blockchain data we previously downloaded to the directory of the newer version of Bitcoin Cash.

Let's move the blockchain data from our previous installation to the newer version of Bitcoin Cash Node by running the following command. Be sure to:
- Replace **/<old-version-number/>** with the version number of our previous Bitcoin Cash Node installation.
- Replace **/<blockchain-data-directory/>** with the name of our directory containing the downloaded blockchain data in our previous Bitcoin Cash Node installation.
- Replace **/<new-version-number/>** with the version number that matches the package we downloaded earlier.

`sudo mv bitcoin-cash-node-<old-version-number>/<blockchain-data-directory> bitcoin-cash-node-<new-version-number>` 

## Move the wallet file we previously backed up

Let's move the wallet file (.dat) that we backed up earlier into the directory of the newer version of Bitcoin Cash Node.

In **Terminal**, run the following command. Be sure to:
- Replace **/<directory-of-wallet-backup/>** with the name of the directory where we saved the wallet backup file to earlier.
- Replace **/<new-version-number/>** with the version number of our new Bitcoin Cash Node installation.
- Replace **/<blockchain-data-directory/>** with the name of our directory containing the downloaded blockchain data in our previous Bitcoin Cash Node installation.

`sudo mv <directory-of-wallet-backup> bitcoin-cash-node-<new-version-number>/<blockchain-data-directory>`

## Run the newer version of Bitcoin Cash Node

Now that we've moved the blockchain data to the newer version of Bitcoin Cash Node, let's run the software. 

To start the Bitcoin Cash Node software, run the following command in **Terminal**. ==Be sure to replace **/<new-version-number/>** with the version number that matches the package you downloaded.==

==add this to setup instructions; original instructions are missing the folder name==
`sudo bitcoin-cash-node-<new-version-number>/bin/bitcoin-qt`

You will be greeted with a **Welcome** window. The directory shown here will likely be pointing to the previous directory, which we've moved to the newer Bitcoin Cash Node directory.

Under **Use a custom data directory**, click the **button with the three dots** to choose a different directory. The **Choose data directory** window will be displayed. (08_bchn_welcome.png) 

Go to the newer Bitcoin Cash Node directory, select the directory that contains the blockchain data that we moved earlier, and click **Choose**. (09_bchn_welcome_change_directory.png)

On the **Welcome** window, click **OK**. Since our node was down for a while, we will need to download the transactions that we have missed.

> **Note:** The time necessary for downloading the missing transactions will vary depending on how long the node was not running.

After the blockchain has finished downloading transactions, the standard Bitcoin Cash Node GUI will be displayed. To confirm which version of Bitcoin Cash Node we are running, click **Help** and select **About Bitcoin Cash Node**. (10_help_about_bchn.png)

Our version will be displayed on the window that appears. (11_about_bchn.png)

The process of upgrading Bitcoin Cash Node is now finished.