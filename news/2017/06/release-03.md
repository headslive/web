##+TITLE v0.3 is released :: heads

heads 0.3 released
==================

Yet another featureful release!

Due this month, I've managed to come with the promised release, and from
now on, I'll be following the quarterly release scheme. This time we
have some interface changes and a couple of nice features which are
explained below.


## [download heads 0.3](https://files.dyne.org/heads/)


The much needed work on [Amprolla](https://github.com/parazyd/amprolla)
has been done, and hopefully soon, heads will integrate with the Devuan
CI so we can start building new packages and hardening existing ones.
This should help with the OpenGL library (libGL) relocation issues that
are caused on i386 due to the hardened kernel we are using.


Notable changes in heads 0.3:

Openbox instead of AwesomeWM
----------------------------

Since this release, the default desktop interface is based on Openbox,
combined with lxpanel and pcmanfm that act like a sane desktop. The
reasoning for this change is that users were complaining about Awesome
being difficult to use for newcomers and somewhat counterproductive.
However, it is still possible to boot into the old AwesomeWM desktop by
selecting the according menuentry on boot.


The Grsecurity situation
------------------------

heads continues with the 4.9 LTS kernel. I see no benefit in joining the
KSPP train, or any similar initiative. linux-heads continues using the
unofficial forward-port of grsec that is being done by minipli:
[https://github.com/minipli/linux-unofficial_grsec/](https://github.com/minipli/linux-unofficial_grsec/)
These (deblobbed) forward-ports will be used until 4.9 support has ended
(January 2019), unless something amazing comes up.


permakey
--------

The root filesystem now holds stripped sources of the kernel it's running
in order to allow compilation of kernel modules at boot time or in the
userspace. I've introduced a kernel module that will be compiled at boot
time if the system is **not** booted in `toram` mode. The module will
cause the system to slam all open tombs, wipe the RAM, files, and finally,
shut down the computer if the USB stick it's running from is plugged out.


Tor Browser 7
-------------

The Tor Browser has been bumped to version 7, and now introduces a
dependency on Pulseaudio if we want sound in Tor Browser. heads does not
ship with Pulseaudio so for the time being, there will be no sound in Tor
Browser.


Less bloat
----------

In this release, I've managed to drop ConsoleKit and PolicyKit from the
system. We can also run Xorg without a login manager like lightdm, so
that has been cut out as well. eudev is now also the default hotplugging
daemon, which lays down the path for eventual OpenRC integration.


[We came from the sky](https://www.youtube.com/watch?v=7kJzg_5zXu0&list=PL204D73D2AEEC639B)

~ [parazyd](mailto:parazyd@dyne.org) (2017-06-22)
