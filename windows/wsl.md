---
id: wsl-install
summary: Install wsl (2) on windows 10
categories: windows
tags: windows, wsl, linux
published: 2020-09-11
author: vndrecodes

---

# Windows Subsystem for Linux Installation

## Installation (WSL)

### Enable optional features

Open PowerShell as a Administrator and execute following commands:

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

### Install ubuntu

Install ubuntu from the official Microsoft Store

## Installation (WSL2)
Available on Windows 10 Version 1903 or higher.

### Enable optional features

Open PowerShell as a Administrator and execute following commands:

```powershell
> dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

> wsl --set-default-version 2
```

Follow instructions for kernel updates if needed.

### Kernel Update
To install Kernel update as a Administrator open `CMD` (as admin) and exec:
```shell
> msiexec /i ".\wsl_update_x64.msi"
```

To convert a existing subsystem run the following command in a Powershell (as admin):
```powershell
> wsl --set-version Ubuntu 2
```

## Reach WSL on the Network
Determine ip address:
```shell
$ ip addr show eth0 # or ifconfig pendant
#172.something/20
```

Test:
```shell
$ python3 -m http.server 8080
```

## Configuration
### Launch Windows binaries via bash
Add symlinks of windows executables to `/usr/local/bin`

### Launch bash via CMD
Launch bash scripts via CMD:
```cmd
> bash -c "echo 'hello world'"
```


##### References
[Windows Subsystem for Linux Installation Guide for Windows 10][1]

[1]: https://docs.microsoft.com/en-us/windows/wsl/install-win10
