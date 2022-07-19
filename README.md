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

> Or install package from tur-repo:
> ```
> pkg install tur-repo && pkg install termux-install
> ```

## Usage

### Install

> If you want to use termux bootstrap with pacman, replace all `termux` with `termux-pacman` <br/>
> Example: `termux-install64` -> `termux-pacman-install64` <br/>

> Also, you can install glibc by using command in 64-bit container (pacman-only), by using `termux-install-glibc` in container. <br/>
> More on this: https://github.com/Maxython/glibc-for-termux/ <br/>
> But keep in mind, the support is experimental. In case of errors, restart the script. If the error persists, create an issue. <br/>

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
