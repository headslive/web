heads 0.4 released
==================

Not dead yet!

It's been a while, but heads is a part of a larger ecosystem that needed
work, to enable heads moving forward. 0.4 (except possible bugfixes and
updates) is probably the final release before heads is ready to apply
for the GNU free distribution list, and of course, will bring cool new
features.


## [download heads 0.4](/download/)


Lots of work has been done on the Devuan SDK, which is the base
environment used for the heads build system. heads is now based on
Devuan Beowulf (Testing), which is equivalent to Debian Buster. Here we
have access to actual up to date software, rather than old frozen
versions which lack today's features. The plan for the persistence setup
in heads is laid down and will be ready for 1.0.

I also want to thank you for the bitcoins that have been donated to
heads. This is very appreciated. During the time of heads' existence,
people have donated close to 0.1033 BTC. Thank you ❤
By the way, due to popular demand - the "financial report" is now
automatically regenerated every 15 minutes.


As for the changelog:


Privesc bug fixed
-----------------

A privilege escalation bug was reported randomly on Twitter. Nobody
cared to open a bug on the bugtracker it seems.

[https://twitter.com/cchuatl/status/941088017325977601](https://twitter.com/cchuatl/status/941088017325977601)

This has been fixed in a combination of the following commits in heads'
rootfs-overlay repository:

* 59f2f0328198634e449ef792ab7ccb0770c83337
* 4f449a461d20806b7b800c733c91c3ed3d37fe33
* 76befa329e99e6e589e5431e40c78cd060ecf489

In any case, this update feature is still not being utilized, and more
work will be done regarding it in the future.



Rebase to Devuan Beowulf
------------------------

heads has been rebased on Devuan Beowulf (Testing), which brings us
current-day software and no planned obsolecence.


OpenRC
------

Our new init system is sysvinit combined with OpenRC. This is a modern
approach to init and it's working quite stable.


Less bloat
----------

heads does not depend on Debian's live-boot/live-config anymore.
Instead, we have a minimal way of bringup that is a lot more auditable
than the thousands of lines of spaghetti shell scripts Debian is able to
produce.

This release also removes some big software like evince, in order to
replace it with more minimal replacements - in this case zathura. More
can be seen in the git commits of heads' build system.


### heads' own initramfs

More Debian bloat. heads now builds and ships with its own initramfs,
which holds just enough to bring up the system, and is  statically
linked in its entirety, instead of having random kernel modules, dynamic
libraries, and other scary stuff inside. The logic stays the same, half
of the available RAM ends up as the volatile storage. The storage is the
same that live-boot produces - overlayfs over /. The fun thing is that
we are able to do this in about 100 lines of shell.


For more detailed changes, see the git logs, and the ChangeLog file in
the build system repository.

[https://raw.githubusercontent.com/headslive/build-system/master/ChangeLog](https://raw.githubusercontent.com/headslive/build-system/master/ChangeLog)


[Eat Liver!](https://www.youtube.com/watch?v=3HBTMq4gwxU)

~ [parazyd](mailto:parazyd@dyne.org) (2018-03-26)
