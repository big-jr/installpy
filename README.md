# installpy

A script to install a newer version of Python on the Raspberry Pi.

## Why Use This Script?

There are two reasons to use this script:
- It saves you a lot of typing when you want to update the version of Python on your Raspberry Pi, because you have to build it.
- It handles the problem with `zlib` that you'll probably encounter during the build process, and then spend hours looking for on the web.

## To Use The Script

Before you do anything else, you'll need to install the `zlib` packages to handle the Zlib compression used in the Python source code:

```(bash)
sudo apt install zlib1g zliblg-dev
```

Copy the script to your home directory on your Raspberry Pi 3 or 4. Set the permissions on the script file so that you can execute it:

```(bash)
chmod u+x installpy.sh
```

Run the script passing the three-part version of the version of Python that you want to install.

For example:

```(bash)
./installpy.sh 3.10.11
```

Make sure you pass all three parts of the version number, or the script will fail.

Run it, go and have dinner, go to bed, go to sleep, get up in the morning and it'll probably be done. Admittedly I was using a Raspberry Pi 3!

Once the script has finished, you'll have a new version of Python to use on your Raspberry Pi. You'll need to address the new version directly, unless you add a symbolic link. I'll add more about that later - in the meantime you can check your new version of Python has installed by running this from the terminal:

```bash
python3.10 --version
```

which should display:

```(bash)
Python 3.10.11
```

## I've Looked At This Script - It's Pretty Unrefined

Yes, it is. But it does the job. I'll be making it prettier later.

