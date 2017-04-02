##+TITLE v0.2 is released :: heads

heads 0.2 released
==================

Another step on our road to freedom...

The 32-bit images have still have broken libGL for some reason. I have
not had time to look into it yet. If anyone is willing to investigate
why and/or fix it - please let me know. I suspect it's a hardening issue
and it might be resolved when heads begins running its own Amprolla
instance, as then we will begin package hardening on our own.


## [download heads 0.2](https://files.dyne.org/heads/)


Besides migrating to Github, there have been a few more notable news:

Tor Browser update and preference
---------------------------------

GNU Icecat is not distributed in heads anymore. The Tor Browser is now
the default and prefered choice for Web browsing. It now uses the Tor
instance that is running system-wide instead of running its own like it
used to.


musl-libc is installed on the system
------------------------------------

For some future plans I have in mind, musl-libc is now installed in the
system by default. Currently `sup` is compiled on boot using musl-libc
so it can be statically linked.


Mozilla changes its redistributon restrictions
----------------------------------------------

Which means - goodbye Icedove, welcome back Thunderbird. Until heads
starts running its own Amprolla instance, we are installing Torbirdy in
an uncommon way (=hack), but it works out fine for now.


Initial persistence setup
-------------------------

This release currently features a very spartan persistence setup which
will begin to get improvements form now on. There is a page you can see
on the [heads wiki](https://heads.dyne.org/wiki/persistence.html).


[God luck and good speed!](https://www.youtube.com/watch?v=XNzzb9fK6cA)

~ [parazyd](mailto:parazyd@dyne.org) (2017-03-27)
