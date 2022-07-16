# Termux-Install
Install Termux Bootstrap as a container in Termux

## Installation
You need to install basic dependencies at first <br/>
```sh
$ pkg install python3 proot wget
```

After that, you can install `bin` files with `make install` command <br/>
Or use binaries directly from there. <br/>
> If Termux gives "permission denied", use command `chmod 0700 bin/*` from here

Or, even more faster, just install deb from Releases, by using `dpkg -i <deb>`

## Usage

### Install

To install 64-bit container: 
```
$ termux-install64
```
To install 32-bit container:
```
$ termux-install32
```

### Start proot in container

To start 64-bit container:
```
$ termux-chroot64
```

To start 32-bit container:
```
$ termux-chroot32
```

### Remove container

To remove 64-bit container:
```
$ termux-remove64
```

To remove 32-bit container:
```
$ termux-remove32
```

## Features

- No root (because of proot)
- Isolated from real Termux installation
- /home in accessibility
- Can be built into .deb using termux-create-package and manifest here
- Installer made up right from [TermuxInstaller.java](https://github.com/termux/termux-app/blob/master/app/src/main/java/com/termux/app/TermuxInstaller.java) code
- Written in python and Bash (Also used scripts from proot package - termux-chroot)
