---
title: Features
category: <b>mo</b>re <b>do</b>cker <b>fu</b>n
order: 10
---
{:.note}
* Run your local docker containers on **any domain** you can come up with
  > No need to edit our /etc/hosts to have a custom development domain for your
  > project locally. Simply define it in your app's .env file and modofu will
  > care about the rest.
* Use **standard ports** for your local docker containers
  > Annoyed you can only use a port once for a container and being forced to
  > access your shiny webapp at localhost:8765 and the other even more fancy one
  > using localhost:8888?
  > With modofu you can run your dockerized app on the standard ports you are
  > used to: the webserver on 80, some https proxy on 443, mysql on 3306, etc.
  > And best of all, you can have your apps running all in parallel at the same
  > time and still use standard ports for them.
* Unified development **throughout your whole** dev-team
  > Once you have setup our project to use modofu, any member of your team can
  > just use it: Simply push it into your VCS (e.g. git) and enjoy your
  > projects works the same for any member of your team.
* **No extra** configuration files
  > modofu does not need some extra modofy*.yaml*/*.json*/*.xml*/*.whatever*. It simply
  > reuses what you already are familiar with:
  > * docker-compose.yml
  > * .env
  > * and on macOS: docker-sync.yml
* It works the same on **macOS** and **Linux**
  > No matter whether you use Linux or macOS or both in our team. modofu
  > **loves both** of these operating systems and take care modofu behaves and feels
  > exactly the same on them.
* A **reasonable docker experience** on macOS
  > If you already use docker with macOS, you know it can be painful slow
  > sometimes and you most likely stumbled about docker-sync as a solution.
  > This modofu uses docker-sync to make your dockerized development a nice
  > experience, by taking care of starting and -much more important- keeping
  > alive docker-sync in background, as long as you are developing on your app.
  > And once you're done and stop your app, modofu will automatically take care
  > about shutting down docker-sync, as well.

