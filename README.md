modofu
======

modofu is intended to make your work with docker a bit easier.

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
- `modofu dev --help` *to get a list of supported other `dev` arguments*

LICENSE for: "modofu"
-----------
Copyright (c) 2016 - 2017 YMC AG
This program is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 2 of the License, or (at your
option) any later version.
A copy of the GNU General Public License version 2 is in file GPL-2.

LICENSE for: "Whale by Laymik from the Noun Project"
-----------
"Whale by Laymik from the Noun Project" (c) by Laymik <maludk@i.ua>

"Whale by Laymik from the Noun Project" is used as the modofu logo
and was only changed in color of the whale (originally black) and
the background (originally transparent).

"Whale by Laymik from the Noun Project" is licensed under a
Creative Commons Attribution 3.0 United States License (CC BY 3.0 US).

A copy of this License is in file CC-BY-3.0-US, but can be viewed online, too:
<https://creativecommons.org/licenses/by/3.0/us/>.

LICENSE for: "Edition" Jekyll template
-----------
Copyright (c) 2016 CloudCannon
The "Edition" Jekyll template, used by the modofu documentation, is
licensed under the MIT License (MIT).
A copy of this MIT License is in file MIT-edition-jekyll-template.

LICENSE for: "lunr.js"
-----------
Copyright (C) 2013 by Oliver Nightingale
Within the documentation "lunr.js" is used, which is licensed under
the MIT License (MIT).
A copy of this MIT License is in file MIT-lunr-js.

