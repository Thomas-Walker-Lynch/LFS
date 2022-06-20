Scripts for Building Linux From Scratch

Genesis is LFS11 stable, see: https://www.linuxfromscratch.org/lfs/downloads/stable/

Named after the hero of this story:
https://www.youtube.com/watch?v=KjgGa92sf4U

The LFS book contains a great deal of information on how to build the various packages that constitute Linux and the
order to do them in.  It would be better to walk through that book step by step than it would be to run these scripts.

Well then what are these scripts for?  Some folks kept a transcript of their build, going step by step manually.  For my
build I decided to write the commands into files and run those scripts.  Apparently the scripts in the book are already
available, but I thought this was a leanring exercise. Those scripts needed to be run in a specific environment,
depending where we were in the book, so I wrote some more scripts to set the proper environment depending where in the
book a person is. This way a single session isn't necessary.  I also added log files that include time information.  I
organized my scripts into section, then collected them into chapter, and then a whole book.

The nice thing about the scripts is that I may just reply them to build another system.

I would like to run some experiments and make some changes.  So hopefully this will evolve into 'Lustucru'  Linux.  But
first I need to get my LFS11 booting.  It is very close.  I will make a release branch for that when it is working.

I have two more projects on my github that I use for my other projects.  System and Resource.  I have a standard
directory structure for a repo, with top level folders 'executable', 'experiment', 'deprecated', 'document', 'library',
and 'temporary'.  The linux build scripts are in a directory called 'build_script'.  I read a directory name as an
attribute assigned to the files in the directory.  I.e. <file> is a document, may be read for each file in the
'document' directory.

Do you also end up fighting for ownership of the top level directory with the system?  It is putting stuff in that
directory while making some of it hidden, and some of it not hidden.  Tree walking scripts for your work sometimes
walk system files and screw things up?  I am not fighting it anymore.  The system gets to have the top level
directory, and I put my stuff under a directory called 'user'.  In this case the top level directory is the 'repo'
directory, but same thing.  So LICENSE, README, .gitignore, .git etc, goes into that top level directory and the
stuff I, the programmer, gets to work on is in the 'user' directory.

To build LFS go to user/build/ directory, and type executable/build.  A person can follow the book by reading
that file and going into the scripts that it calls.

