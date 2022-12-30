# Cleaning up old files

Let's clean up our SSD since we no longer need the files from our previous Bitcoin Cash Node installation.

!!! note
    
    This part is optional but recommended.

To remove those old files, open a new **Terminal** window and run the following command. Be sure to:

- Replace `<SSD-DIRECTORY>` with the name of the SSD directory.
- Replace `<OLD-VERSION-NUMBER>` with the version number of the previous Bitcoin Cash Node installation.

```console
sudo rm -R /<SSD-DIRECTORY>/bitcoin-cash-node-<OLD-VERSION-NUMBER>
```

With the SSD organized, we can avoid confusion when updating Bitcoin Cash Node in the future.
