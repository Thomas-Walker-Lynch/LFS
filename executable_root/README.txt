
From Chapter 7 in the book we are to be logged in as the root user. IMHO this seems premature, but need to follow the
book the first time through.

The scripts in the this repo/LFS/executabler_root directory are all owned by the user lfs, but they are to be executed
as root. I suggest using sudo to do this.  If you forget to use sudo they were be permission errors as the /mnt/lfs
directory is now owned by root.  In contrast if you open a root shell then we might end up with root owned files
all over the place.



