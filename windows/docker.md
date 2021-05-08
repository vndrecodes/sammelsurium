---
id: windows-docker
summary: Install docker engine on windows systems
categories: windows
tags: docker, windows
published: 2020-09-11
author: vndrecodes

---

# Docker Desktop for Windows Installation

## Prerequisites

### WSL2
Docker seamlessly integrates into [WSL2](./wsl.md)

## Installation Docker Desktop

### Setup
Download and install Docker Desktop from [Get Started with Docker](https://www.docker.com/get-started)  

Follow installation wizard and enable the WSL option.


### Configuration

Open `Docker -> Settings -> General` and enable:
- [x] `Use the WSL 2 based engine`

Docker can be called from WSL 2 (e.g. Ubuntu) w/o further configuration.

```shell
$ docker ps -a
```
