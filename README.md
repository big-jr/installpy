# installpy

A script to install a newer version of Python on the Raspberry Pi.

## To Use The Script

Copy the script to your home directory on your Raspberry Pi 3 or 4. Run the script passing the three-part version of the version of Python that you want to install.

For example:

```(bash)
./installpy.sh 3.10.11
```

Make sure you pass all three parts of the version number, or the script will fail.

## Why Use This Script?

There are two reasons to use this script:
- It saves you a lot of typing
- It handles the problem with `zlib` that you'll probably encounter during the build process, and then spend hours looking for on the web.

Run it, go and have dinner, go to bed, go to sleep, get up in the morning and it'll probably be done. Admittedly I was using a Raspberry Pi 3!
