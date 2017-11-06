On grsec and status of heads
============================

After all the rumors, unfortunately today it was made true.

Grsecurity is no longer publishing public testing patches:
[https://grsecurity.net/passing\_the\_baton.php](https://grsecurity.net/passing_the_baton.php)

Personally I am very unhappy because of this move, but it is very
understandable when looking it from grsec's side. People have often
tried to (badly) upstream some of their patches, and never contributed
back, or credited Grsecurity for the work done. Spender & co. have had
enough of it.


What does this mean for heads?
------------------------------

Well, linux-heads is currently based on the 4.9 kernel branch, which is
also the last public patch given from Grsecurity (4.9.24). I will
continue to maintain heads with this kernel until the support for this
branch ends (January, 2019).  This will hopefully give a timeframe big
enough to figure out next moves.

In the meantime, heads will focus on the more important parts of the
roadmap, such as becoming completely libre by blocking `contrib` and
`non-free`, and more secure userspace by hardening binaries on compile
time. Since GCC 6, PIC/PIE were upstreamed and default by now, but there
is still more we can do about it.

On another note, Kees Cook and other certain people are trying to
mainline some code, part of which can be seen here:
[https://lkml.org/lkml/2017/4/25/900](https://lkml.org/lkml/2017/4/25/900).

~ [parazyd](mailto:parazyd@dyne.org) (2017-04-26)
