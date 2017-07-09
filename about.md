##+TITLE about :: heads

About heads
===========

heads is a GNU/Linux liveCD distribution aimed at people who like the
aspect of controlling their privacy and anonymity on the Internet. You
might have heard of [Tails](http://tails.boum.org) as a similar
GNU/Linux distribution. heads was born as an answer to Tails, since
Tails is using systemd as an init system and also contains non-free
software.

In heads, the init of choice is not systemd. systemd is a huge
piece of software that, while being free software, has not been audited
for security since its creation. Being big as it is, it is hard to do
so, and as time goes, it's becoming even tougher to audit systemd. We do
not aim to disrespect or get into the controversy on why systemd is a
bad choice. We just do not wish to use it.

Another **important** thing is that heads uses only
[free software](https://www.gnu.org/philosophy/free-sw.html),
while Tails continues using non-free software. Non-free software can not
be audited and as such cannot guarantee you security or anonymity. On
the other hand, with heads you only use free software, meaning you can
gain access to **any** source code that is included in heads, at **any
time**. Using free software it is far easier to avoid hidden backdoors
and malware that might be in non-free software. We hope this makes you a
tad more aware of the importance of free software and its uses.

Let's leave Tails forever now and get a bit deeper into heads...

## Introduction

So, let's begin from the beginning, eh?

**heads** is a libre GNU/Linux distribution intended to be used as a
liveCD. It respects your freedom by offering only free (libre) software.

heads uses [Tor](https://torproject.org) to help you be anonymous when
using the Internet. In heads, all your Internet traffic is sent over Tor
by default. Of course, there is an option to turn it off if you prefer.
heads does not impose or force any choices to the user. It simply offers
sane defaults, and it is up to the user to choose or change those
defaults in the way the user prefers it...

## heads' security

heads uses a deblobbed and hardened Linux kernel. It does so by using
a Linux kernel patched with [grsecurity](https://grsecurity.net/). Since
grsecurity isn't redistributing their patch gratis anymore, heads uses
forward ports of the last publicly available patch. Deblobbing of the kernel
is done using scripts from
[linux-libre](http://www.fsfla.org/svn/fsfla/software/linux-libre/scripts/).
To learn more about **grsecurity**, you should visit their
[website](https://grsecurity.net/).

Grsecurity is a huge security enhancement to the Linux kernel that
defends against a wide range of security threats through intelligent
access control, memory-corruption based exploit prevention, and a host
of other system hardening that generally require no configuration. It
has been actively developed and maintained for the past 15 years.

It helps you protect your system against 0day attacks and other known
attacks on the Linux kernel.

But in heads, the kernel security is not the only issue we've
acknowledged. heads is usually released on a quarterly basis, except if
serious vulnerabilities in the software included in heads have been
found. In this case, an exception will be made and we will release an
updated version of heads - before its next scheduled release.

Your security online is also a big issue for us. With heads, your
Internet traffic is always routed through the
[Tor](https://torproject.org) network (unless you choose not to, of
course). The Tor protocol is designed to also encrypt your traffic in
such a way that you are anonymized when browsing the Internet. Web sites
and services will not know where your traffic is originating from. A
much better explanation on the protocol can be found on Tor's website.

## heads' interface

By default heads offers Openbox as its graphical window manager. It is
supposed to provide a familiar desktop interface that should be pretty
user-friendly.

heads also offers AwesomeWM as its graphical window manager. It's relatively
lightweight and quite usable. It might not be a perfect choice for the
GNU/Linux layman, but for more experienced GNU/Linux users, or for users
that prefer window managers over full-blown desktop environments,
AwesomeWM might be a more preferable choice. Though, it's not that
difficult to use. Right-click on the desktop -> Awesome -> Keybindings
and you're good to go. AwesomeWM being a window manager, is
keyboard-oriented, but still stays mouse friendly.
