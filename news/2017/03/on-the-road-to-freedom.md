##+TITLE on the road to freedom :: heads

On the road to freedom (heads 0.1 released)
===========================================

I am happy to announce the first "real" release of heads! Version 0.1.

These two weeks since the initial release I've received some feedback,
reports and other things which helped me polish up the current system. I
got lots of insight into certain things when I saw how heads performs in
real-world situations.

I have now built both 32-bit and 64-bit images. The 32-bit images have
broken libGL for some reason. If anyone is willing to investigate why
and/or fix it - please let me know.

## [download heads 0.1](https://files.dyne.org/heads/)

There have been some significant changes in the direction where heads is
heading:

heads now uses Devuan Ascii as a base system
--------------------------------------------

Yes, it's Debian Sid / Devuan Ascii. Yes, people call it "unstable".
It's just in Debian's dictionary: "stable" = "ancient software".
I am not going along this path, not anymore. Right now heads
is built on the base of Devuan Ascii and you can now enjoy up-to-date
software that people should be using. It's still systemd-free and going
strong :)

heads will not implement MATE
-----------------------------

AwesomeWM is performing great for both new users and experienced users.
There might be some eyecandy features (cairo-dock perhaps) added to the
desktop to mimic the feel of Xfce of sorts, just for convenience's sake,
but don't count on it. heads will now avoid bloat as much as possible,
while granting good usability.

heads drops aufs4
-----------------

By switching to Devuan Ascii as a base system, we can now use the
latest-and-greatest OverlayFS natively in Devuan :) Now less
patching is needed for linux-heads, and less hacks applied in the build
system.

~ [parazyd](mailto:parazyd@dyne.org) (2017-03-12)
