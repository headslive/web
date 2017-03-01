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
out the correct device if you are not sure.

Once you got it, the only thing you need to do is dd the ISO to a flash
drive by doing the following:

	; dd if=heads-*.iso of=/dev/sdb bs=1M && sync

If no errors were seen, sync once more and you are done. You can now use
this flash drive to boot into the heads live OS.

Have fun!


booting
-------

Insert the USB stick in your computer and figure out how to boot from
it. You will be presented with a console interface telling you the
credentials to login (luther:luther). From there on, as you login, a
password will be generated for the root user, and you should take note
of it if you plan to do anything as the root user. You can also login as
root with that password and execute `passwd` to change it.

By logging in as the user `luther`, you can start a graphical interface
by typing `startawesome`. From there on, you should find it easier to
look around :)
