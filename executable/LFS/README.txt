
---

There are three machines involved:

m0 - the machine that runs the virt-manager
m1 - the machine that we use in order to build LFS
m2 - the machine that runs the LFS that we build

m0 is my normal work computer, so I don't want to chance damaging it.  Consequently I ran QEMU and installed Debian on
virtual machine m1.  I made a user called 'lfs', and gave it sudo privileges. 

m0 runs a Gnome desktop and m1 is running in a window. We can do that sort of thing with virtual machines. From the m1
console window I logged in as root and got an ssh server running. Once sshd was running I never bothered to open
a console window again. 

An m0 invocation of emacs appears in a window.  I then use Emacs Trump to open frames on m1.  Thus, within the frames of
said emacs I can open m0 shells and files, or m1 shells and files, and copy between them. The only difference between
the m0 shells and files, and the m1 shells and files, is the command that was used to open them.

m1 is on my LAN and can reach the gateway.  Hence it is possible to scp or wget files directly to it.

My typical mode of working is to run a file browser on m0 to visit the LFS website and read the book.  I then cut the
directions out from the book inside the browser, and paste them into emacs shells or files on m1. 

I am pretty happy with this setup, but this is not the only way to do it.  One other possibility would be to
setup m1 so that it can share m0's desktop.  Then a person would be able to cut and paste between windows, where some
windows are m0 windows, and some are m1 windows, thus seemlessly moving data between m0 and m1. This approach
would require installing a window manager on m1.

---

m0 has a directory tree holding many files and tools, but this is moot, because m0's only jobs are to run the browser,
the emulator, and emacs. Instead m1 is the workhorse.

The m1 directory tree is held on a virtual drive that was setup as part of creating m1 in QEMU.  It is built over an
ext4 file system and is currently holding a Debian install.  Debian of course comes with many tools.  Because m1 is
networked I have used apt to install more tools yet.  Initially the most important things about m1 is that it is running
sshd, or alternatively can open windows and share the desktop with m0.

The next goal after setting up m1 is to build a standalone directory tree for m2. When we get this, we may
may then boot m2 while making this standlone directory tree the root of m2's file system.

We begin with an empty device or partition that has been formated with an ext4 filesystem.  As per directions in the LFS
book, m2's soon to be populated files tree is mounted into m1's file system at the point /mnt/lfs.

In many cases m1 and m2 will have the same hardware architecture.  Theoretically then, we could take a copy of m1's file
system, and just boot m2 from that. However, then we would be booting up Debian, not LFS.  So instead we are going to
download all the Linux packages, and then configure and build them into the m2 directory tree, in a manner
that they do not refer to anything outside of the m2 tree.

One of the tools we will use to assure that our Linux build does not spill out of the m2 tree is to make use of the
command chroot, which will cause the command that runs under it, often a shell, to see /mnt/lfs as the root of the
file system.






