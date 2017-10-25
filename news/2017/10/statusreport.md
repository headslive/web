##+TITLE status report :: heads

heads' status report
====================

What I am currently doing with heads

The build system development has been slow lately, but this does not
mean that heads' development itself has stopped. As of lately, more work
is being done on Devuan Ascii and it is planned to be released as
"stable" by the end of 2017.  This will also make heads be rebased to
the next Devuan Testing (called Beowulf).

In the meantime, heads will be getting its own repositories, which will
allow me to package some software that is currently installed using the
blend file. This way updates will be made more easily, and it also
allows for repository freezing. This setup will be done using the
Amprolla tool:
[https://github.com/headslive/amprolla](https://github.com/headslive/amprolla)

On top of this, heads will be building its packages, and possibly the
ISOs itself using the Jenkins CI. It's self-hosted on Dyne.org
infrastructure and will be publicly accessible. The package sources
themselves shall be hosted on the same github organization where
everything else is so far.

As we progress, I hope to release a version with all of this in place
shortly after Devuan Ascii is released. It will be a 1.0 version, and
we'll be out of the 0.X space.

For the current release, an apt-get update will get you the latest
security fixes.

~ [parazyd](mailto:parazyd@dyne.org) (2017-10-25)
