# Setting up Bitcoin Cash Node

## Download and extract the Bitcoin Cash Node package

Open a web browser on your Raspberry Pi, and go to the **[Download](https://bitcoincashnode.org/en/download.html)** page on the Bitcoin Cash Node website.

Under **Linux**, download the **AARCH 64 (tar)** package the home directory on your mounted SSD. Downloading this compressed package should take about 1 minute.

<img src="https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/images/bitcoin_cash_node_download.png?raw=true" />

After the compressed package finishes downloading, let's extract the compressed package. 

To do so, let's open **Terminal** and go to the directory where you downloaded the package to. Be sure to replace **"SSD-directory-containing-downloaded-package"** in the command below with the directory where you saved the compressed package to.

`cd /"SSD-directory-containing-downloaded-package"`

Next, let's extract the compressed package. When running the following command in **Terminal**, be sure to replace **"version-number-downloaded"** with the version number that matches the package you downloaded.

`sudo tar -xvzf bitcoin-cash-node-"version-number-downloaded"-aarch64-linux-gnu.tar.gz`

While we're in this directory, let's create a new directory to store the blockchain data and keep things tidy. In **Terminal**, run the following command.

`mkdir blockchain-data`

## Run Bitcoin Cash Node

Now that we've extracted the Bitcoin Cash Node package, let's run the software and start downloading the transactions within the blockchain to your node.

> **Note:** Downloading all the transactions in the blockchain will take a while. You may want to start the Bitcoin Cash Node software a couple hours before going to bed, as you may experience a slow Internet connection.

To start the Bitcoin Cash Node software, run the following command in **Terminal**.

`sudo bin/bitcoin-qt`

The Bitcoin Cash Node software then prompts us to specify where to download the blockchain transactions to. 

Select **Use a custom data directory**, and click the **three dots** to choose a directory.

<img src="https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/images/bitcoin_cash_node_welcome_screen.png?raw=true" />

Navigate to your SSD, select the directory named **blockchain-data** that you previously created, and click **OK**. Then, click **OK** to begin downloading the blockchain.

The Bitcoin Cash Node software will then begin downloading transactions. This will take hours or days, depending on your Internet connection speed.

<img src="https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/images/bitcoin_cash_node_sync.png?raw=true" />

After all the Bitcoin Cash transactions have finished downloading to your SSD, you will see the following Overview screen and your node will automatically start verifying transactions on the Bitcoin Cash blockchain as they happen.

<img src="https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/images/bitcoin_cash_node_synced.png?raw=true" />

To monitor inbound and outbound traffic on your node, click **Window** in the menu bar and choose **Network Traffic**. From here, you can see how much data is being transferred to and from your node. 

> **Note:** The "Received" and "Sent" under "Totals" will reset if you restart the Bitcoin Cash Node software. Additionally, the network traffic will reset if you move the slider below the graph.

<img src="https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/images/bitcoin_cash_node_network_traffic_30_minutes.png?raw=true.png" />