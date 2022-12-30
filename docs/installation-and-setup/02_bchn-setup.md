# Setting up Bitcoin Cash Node

## Download and extract the Bitcoin Cash Node package

Open a web browser on the Raspberry Pi, and go to the **[Download](https://bitcoincashnode.org/en/download.html)** page on the Bitcoin Cash Node website.

Make sure the latest version of BCHN is selected. Under **Linux**, download the **AARCH 64 (tar)** package to the home directory on our mounted SSD. Downloading this compressed package should take about 1 minute.

![Bitcoin Cash Node download screen](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/bitcoin_cash_node_download.png?raw=true)

After the compressed package finishes downloading, let's extract the compressed package.

To do so, let's open **Terminal** and go to the directory where you downloaded the package to. Be sure to replace `<SSD-DIRECTORY-CONTAINING-DOWNLOADED-PACKAGE>` in the command below with the directory where we saved the compressed package to.

```console
cd /<SSD-DIRECTORY-CONTAINING-DOWNLOADED-PACKAGE>
```

Next, let's extract the compressed package. When running the following command in **Terminal**, be sure to replace `<VERSION-NUMBER-DOWNLOADED>` with the version number that matches the package we downloaded.

```console
sudo tar -xvzf bitcoin-cash-node-<VERSION-NUMBER-DOWNLOADED>-aarch64-linux-gnu.tar.gz
```

While we're in this directory, let's create a new directory to store the blockchain data and keep things tidy. In **Terminal**, run the following command.

```console
mkdir blockchain-data
```

## Run Bitcoin Cash Node

Now that we've extracted the Bitcoin Cash Node package, let's run the software and start downloading the blockchain transactions to our node.

!!! note
    
    Downloading all the transactions in the blockchain will take a while. You may want to start the Bitcoin Cash Node software a couple hours before going to bed, as you may experience a slow Internet connection.

To start the Bitcoin Cash Node software, run the following command in **Terminal**. Be sure to replace `<VERSION-NUMBER-DOWNLOADED>` with the version number that matches the package we downloaded.

```console
sudo bitcoin-cash-node-<VERSION-NUMBER-DOWNLOADED>/bin/bitcoin-qt
```

The Bitcoin Cash Node software then prompts us to specify where to download the blockchain transactions to.

Under **Use a custom data directory**, click the **three dots** to choose a directory.

![Bitcoin Cash Node welcome screen](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/bitcoin_cash_node_welcome_screen.png?raw=true)

Navigate to your SSD, select the directory named **blockchain-data** that you previously created, and click **OK**. Then, click **OK** to begin downloading the blockchain.

The Bitcoin Cash Node software will then begin downloading transactions. This will take hours or days, depending on your Internet connection speed.

![Bitcoin Cash Node sync](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/bitcoin_cash_node_sync.png?raw=true)

After all the Bitcoin Cash transactions have finished downloading to your SSD, you will see the following Overview screen and your node will automatically start verifying transactions on the Bitcoin Cash blockchain as they happen.

![Bitcoin Cash Node synced](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/bitcoin_cash_node_synced.png?raw=true)

To monitor inbound and outbound traffic on your node, click **Window** in the menu bar and choose **Network Traffic**. From here, you can see how much data is being transferred to and from your node.

!!! note
    
    The "Received" and "Sent" under "Totals" will reset if you restart the Bitcoin Cash Node software. Additionally, the network traffic will reset if you move the slider below the graph.

![Bitcoin Cash Node network traffic 30 minutes](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/bitcoin_cash_node_network_traffic_30_minutes.png?raw=true)
