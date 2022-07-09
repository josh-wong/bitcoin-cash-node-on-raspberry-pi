# Setting up your Bitcoin Cash wallet

Your Bitcoin Cash wallet has already been created at this point, so let's secure it with a password and back it up.

> **Warning**
> 
> The instructions in this section are very important. Neglecting to secure your wallet with a password and backing it up could result in you losing the Bitcoin Cash that you receive from others.

## Create a password for your wallet

Let's secure your wallet with a password. You will need this password to restore it from the backup, which you will create after setting a password.

In the menu bar, click **Settings**, then select **Encrypt Wallet**. When the password setup window appears, enter a secure password. Enter the same password again to confirm it.

> **Warning**
> 
> Be sure to remember this password. Write it down and put it in a safe, for example.
After you have successfully encrypted your wallet with a password, the following confirmation screen will appear. Please carefully read the notice, then click **OK**.

![Bitcoin Cash Node wallet encrypted notice](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/bitcoin_cash_node_wallet_encrypted_notice.png?raw=true)

## Back up your wallet

Now, let's back up your wallet. 

Backing up your wallet let's you restore it if the device hosting your node and wallet encounters a catastrophic failure.

In the menu bar, click **File** and select **Backup Wallet**. 

When the directory window appears, choose a directory to save the wallet data (.dat) file to. If you don't have your Raspberry Pi set up to communicate with other computers on your network, save the wallet file (.dat) to your Raspberry Pi first and then immediately save it to another device for safe-keeping.

> **Warning**
> 
> Do not keep your wallet backup on the same device that hosts your node and wallet. If your device encounters a catastrophic failure, you will not be able to restore the wallet from the backup. Instead, save the wallet backup to a secure, reliable device or devices.

Once you have chosen a location, click **OK**.

## Optional: Receive Bitcoin Cash in your wallet

Finally, let's test your wallet.

Click the **Receive** icon. Fill out the information that you consider necessary for your records. All fields are optional and are for your reference.

A window will appear that shows you a QR code for someone to scan and send you Bitcoin Cash. Additional payment information include the URI, address, and wallet for the transaction.

You can now give someone the QR code or wallet address for them to send you Bitcoin Cash. After they have sent some Bitcoin Cash, the transaction will appear as "Pending" until it is validated on the blockchain.

![Bitcoin Cash Node test receive pending](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/bitcoin_cash_node_test_receive_pending.png?raw=true)

After a few minutes, you can see that the transaction has been validated and your Bitcoin Cash now appears as "Available" funds.

![Bitcoin Cash Node test receive verified](https://github.com/josh-wong/bitcoin-cash-node-on-raspberry-pi/blob/main/docs/assets/screenshots/bitcoin_cash_node_test_receive_verified.png?raw=true)

When the Bitcoin Cash has moved to your available balance, it is in your possession and you can send it to others, make payments, or save it.