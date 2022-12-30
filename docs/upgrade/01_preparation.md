# Preparing our device

Before upgrading Bitcoin Cash Node, we should back up our wallet (in the .dat file format) and update our device. This will help ensure a smooth upgrade process.

## Optional: Back up your Bitcoin Cash wallet

!!! warning
    
    This step is optional since you will be moving your blockchain data, which includes your wallet, from the old Bitcoin Cash Node directory into a new directory. However, temporarily backing up your wallet is still recommended just in case you encounter an issue during the upgrade.

In the **Bitcoin Cash Node application**, click **File** and choose **Back up wallet**.
![Back up Bitcoin Cash wallet](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/upgrade_bitcoin_cash_node_wallet_backup.png?raw=true)

Then, let's choose a directory to save our wallet backup.
![Save Bitcoin Cash wallet backup](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/upgrade_bitcoin_cash_node_wallet_backup_save.png?raw=true)

Our wallet will be saved in the directory we chose. We will be moving this wallet file to the newer version of Bitcoin Cash Node later, so remember where we saved this wallet backup file.

## Update and upgrade Ubuntu Desktop

Before we start the upgrade process, let's exit from Bitcoin Cash Node and install any updates and upgrades to Ubuntu Desktop.

To close Bitcoin Cash Node, do one of the following:

- **To close the application from the graphical user interface (GUI):** Click **File**, then choose **Exit**.
![GUI - Close Bitcoin Cash](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/upgrade_bitcoin_cash_node_close_gui.png?raw=true)

- **To close the application from Terminal (if that is where you ran Bitcoin Cash Node):** Press **Ctrl + C** on the keyboard.
![Terminal - Close Bitcoin Cash Node](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/upgrade_bitcoin_cash_node_close_terminal.png?raw=true)

Now, let's update and upgrade Ubuntu Desktop by running the following command in Terminal.

```console
sudo apt update && sudo apt upgrade -y
```

Since we might have installed major updates and upgrades, let's reboot the device by running the following command in Terminal.

```console
sudo reboot
```
