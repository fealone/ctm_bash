# ctm_bash
## What is this
This project furnishing to a segregated customize environment with bash.  
ctm_bash does not affect the host environment.  
It is for those who operate a terminal without affecting the host environment.  

## Getting Started
Can use it as a script, or set a login shell.  
If it is possible to affect the host environment, it can set a login shell else can use as a script.  
The bashrc used in ctm_bash is in Ubuntu 16.04.  

### Directory structure

```
ctm_bash/
 ├ bin/  # Executable files manged by git.
 ├ exbin/  # Executable files not manged by git.
 ├ home/  # Home directory.
 │ └ .bashrc  # Default bashrc
 │ └ .vimrc   # Default vimrc
 ├ install.sh  # Install script
 ├ ctm_bash  # Itsself
 ├ ctm_bashrc  # Customized bashrc
 └ ctm_pylibs/  # Python libralies managed by git.
```

## Prerequisites
If use ctm_bash, need bellow packages.

* Bash
* Git

## Installing
### Script
To install, just run git clone and install.sh.

```bash
git clone https://github.com/fealone/ctm_bash
cd ctm_bash
./install.sh
```

### Login shell
To set a login shell, run the install as a script and edit the login shell in passwd.

* Install ctm_bash

```bash
cd ~
git clone https://github.com/fealone/ctm_bash
cd ctm_bash
./install.sh
```

* Edit passwd

```bash
sudo vim /etc/passwd
```

```
{uesrname}:x:{uid}:{gid}:{fullname},,,:/home/{username}/ctm_bash/home:/home/{username}/ctm_bash/ctm_bash
```

## Usage
### Script
To run, just execute ctm_bash.

```bash
cd ctm_bash
./ctm_bash
```

### Login shell
Just log in with the user you set.

```bash
su - {username}
```

## Lastly
ctm_bash is made on the premise to be customized.  
If necessary, edit the script and install other packages.
