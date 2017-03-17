##+TITLE using heads :: heads wiki

using heads
===========

This wiki page should guide you in the process of obtaining heads, and
booting into the live system. It's pretty straightforward and there
should be no issues if you follow these steps.

downloading
-----------

First head off to the [downloads](/download/) page, and find out where
to download the ISO, along with the shasums and the gpg signatures.

Once you have obtained all four, and they are in a directory on your
filesystem, do the following:

	; gpg --verify heads-*.asc
	; sha256sum -c heads-*.sha

If there were no errors, you are good to continue. Otherwise, rinse and
repeat. Something went wrong.

It is possible to burn the heads ISO to a CD, or use it inside a virtual
machine. This isn't documented for now, perhaps in the future. I will
show you how to use it from a USB flash drive.

So... Plug in a USB flash drive into your computer. In most cases it
will be automagically recognized by your computer and will be given a
name such as `sdb` or something in a similar manner. It resides in
`/dev` on your filesystem. You can check your `dmesg` output to figure
out the correct device if you are not sure. You might see partitions
like `/dev/sdb1` and `/dev/sdb2`. These will be destroyed once you
execute the `dd` command below.

Once you got it, the only thing you need to do is dd the ISO to a flash
drive by doing the following with root permissions (note that the device
is `/dev/sdb` and not `/dev/sdb1`):

	; dd if=heads-*.iso of=/dev/sdb bs=1M && sync

If no errors were seen, sync once more and you are done. You can now use
this flash drive to boot into the heads live OS.

Have fun!


booting
-------

Insert the USB stick in your computer and figure out how to boot from
it. You will be presented with an interface asking you to login
(luther:luther). From there on, as you login, a password will be
generated for the root user, and you should take note of it the first
time you open a terminal window if you plan to do anything as the root
user. You can also login as root (use `su`) with that password and
execute `passwd` to change it.
