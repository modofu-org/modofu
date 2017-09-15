modofu
======

modofu is indented to make your work with docker a bit easier.

INSTALL
-------
Before you can use modofu, you need to install it on your local system:
```
docker pull ymcag/modofu:stable
docker run --rm ymcag/modofu:stable install | sudo bash -
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
docker run --rm ymcag/modofu:stable uninstall | sudo bash -
docker rmi ymcag/modofu:stable
```

Working with modofu
-------------------------------
To get some general help how to use modofu, run:
- `modofu help`

Since modofu is intended to be used on project level, you first should
change directory to a local checkout of your project's code:
- `cd ~/path/to/your/projects/code` *Usually this is a git repository*

Afterwards you can run commands like:
- `modofu dev start` *to start your local development setup*
- `modofu dev stop` *to stop your local development setup*
- `modofu dev remove` *to get rid of your local development setup*
- `modofu dev help` *to get a list of supported other `dev` arguments*

LICENSE
-------
Copyright (c) 2016 - 2017 YMC AG
This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 2 of the License, or (at your
option) any later version.
A copy of the GNU General Public License version 2 is in file GPL-2.

