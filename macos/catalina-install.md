---
id: catalina-install
summary: Clean macOS Catalina install
categories: macos
tags: os, mac
published: 2020-08-01
author: vndrecodes

---

# macOS catalina clean install guide
## Prerequisites

1. Get a fresh copy of the `catalina installer` from the app store [macOS Catalina laden](https://itunes.apple.com/de/app/macos-catalina/id1466841314?ls=1&mt=12)
2. Create `Mac OS Extended` USB Stick `MyVolume`
3. Execute:
```shell
sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```

### Installation
1. Hold `option` key on startup to boot from stick
2. Use `diskutillity` app to delete `Macintosh HD - DATA` Volume  
  * do not delete volume group
3. Format leftover `Macintosh HD` Volume (APFS)
4. Launch catalina installer
