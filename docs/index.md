---
title: modofu
nav_title: About
category: <b>mo</b>re <b>do</b>cker <b>fu</b>n
order: 0
---
> modofu is a free open source project, that helps you and all of your team mates
> to have a solid and easy to maintain dockerized development environment.

----
You for sure already discovered, that developing your app with docker on your
local system is just cool. But if you've done this now for some time, you most
likely found at least these things, that spoil the party:

{:.note}
* **Always using *<u>localhost</u>* sucks**
  > With modofu you can use **<u>any.domain.you.could.imagine</u>**.
  > ^
  > modofu will take care your */etc/hosts* gets updated automatically so you
  > can access the docker containers of your app with one or multiple custom
  > domains.

* **Remembering port numbers like *:8089* sucks *even more***
  > If your want to use standard ports for your local docker containers, modofu
  > helps your with this - just use the ports you are familiar with without any
  > pain. Just to mention a very few examples:
  > * **http** on port **80**
  > * **https** on port **443**
  > * or even **mysql** on **3306**
  > ^
  > You even can **simultaneously** run **multiple of our apps** on your local
  > system on **standard ports**.

* <b>Docker on macOS is so<i>ooo</i></b>oo<i>o</i> slow
  > modofu utilizes docker-sync to gives a reasonable docker development
  > experience on macOS, but it does it in a way to not make your project slow
  > with Linux, where you do not need docker-sync at all.
  > ^
  > This way is is easy to have a mix of developers using Linux and macOS in a
  > single team.
^
-----
If you already solved the above for your local docker development, that's
really great *(please consider helping with the modofu development
itself!)*, **<u>but</u>**:

> Can it be, that you *ended up with a script* as mighty and powerfull as the
> hell, that it takes you to maintain it?

Most likely, you
* first needed a place to but it *- probaly your app's git repository*
* and now have copied together an army of cloned zombie scripts, that haunt
  your git repositories.

If so, let modofu help you drive them out!
