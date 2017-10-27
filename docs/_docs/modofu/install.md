---
title: Install / Upgrade / Uninstall
category: Quickstart
order: 101
---
INSTALL
-------
Before you can use modofu, you need to install it on your local system:
```
docker pull modofu/modofu:stable
docker run --rm modofu/modofu:stable install | sudo bash -
```

UPGRADE
-------
To upgrade modofu run:
```
modofu self-upgrade
```

UNINSTALL
---------
To remove modofu from you local system run:
```
docker run --rm modofu/modofu:stable uninstall | sudo bash -
docker rmi modofu/modofu:stable
```
