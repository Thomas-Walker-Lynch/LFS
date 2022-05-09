
using set -e causes binutils configure command to bail.

In looking at configure.log line 86 there is reference to the command "gcc -V" - mote the capital V.  gcc has
no such option (unless I am reading the docs wring).  Perhaps this is the error causing the problem with
set -e?  Will send this to the support mailing list for comment.


