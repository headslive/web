persistence guide
=================

Since version 0.2, heads allows for USB persistence using `tomb`.
The process uses some automagic to figure out where to place it.


setup
-----

The setup is pretty straightforward. Issue `sudo heads-persistent-setup`
in a terminal window and you will be guided through the process. **Pay
attention** to the text that shows to get a good understanding.

The script will look for free space on the USB drive you are using to
boot heads and will create an ext2 partition out of it. Further on, it
will mount that partition and try to create a tomb, along with its key.
You will be prompted for the tomb size you would like. If that goes
well, you have to choose a passphrase for the tomb key...

A tomb will be dug, formatted and locked with the key that was created.
Currently, the key resides at the same place where the tomb is, but in
the future, as the script develops, it will not be mandatory.

When done, the tomb will be opened and mounted. You will get a short
explanation in the terminal. You can close the tomb by issuing `sudo
tomb close persistence`.


usage
-----

When you finish the setup for the first time, the persistence tomb stays
open on the system and you can use it immediately. If you reboot or
close the tomb, you can now initialize persistence by issuing
`sudo heads-persistent-load`. This script will look for the before
created partition, try to mount it, and then try to open the persistence
tomb. If you set up bind hooks (see tips below), this is the time when
directories get overlayed.


tips
----

A simple tomb as such might not be super-useful for everyone. Luckily
tomb has some nifty features. One of them is called `bind-hooks`. A bind
hook executes when a tomb is open, and binds a directory inside the tomb
to a directory on the filesystem. This way you can override parts of the
system you want to be persistent. When you were setting up persistence,
this was mentioned, and an example bind hook was dropped inside the
tomb, called `bind-hooks.example`.

The syntax of the bind-hooks file is the following:

```
dir/relative/to/tomb	dir/relative/to/users/home
```

So, for example, it can be very useful to have a gnupg directory with
your keys inside the tomb, and bind it to the system when you open the
tomb.

```
gnupg-keys	.gnupg
```

* See the full tomb documentation [here](http://tomb.dyne.org/tomb_manpage.pdf)
* [Tomb's website](https://www.dyne.org/software/tomb/)

