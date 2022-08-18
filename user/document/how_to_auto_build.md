
0. Required preparation.

 Yes, there is a chance this will break your system.

 The Lustucru build scripts are designed to run from the command line in a unix bash shell, so
 you will need to be able to run a unix bash shell.  This is the version of bash that I am running:

 GNU bash, version 5.1.16(1)-release (x86_64-redhat-linux-gnu)

 The user running the scripts will have to be able to sudo. I highly recommend to
 add the user to the now password required for sudo in /etc/sudoers otherwise
 scripts might stop and then timeout while waiting for a sudo password.  My build
 takes over an hour.  Depending on the platform it can take much longer.  I saw
 one build take 6 hours. Who would want to monitor for a sudo password that long?

 Be sure to grep the scripts for sudo to be confortable with the calls.


1. Suggested preparation.


  It is not necessary, but consider installing my system scripts,
  https://github.com/Thomas-Walker-Lynch/system. 

  These include home, user, and Z.  If you do not use these, then some editing
  of the example bashrc will be required.  In any case Z will be needed, a copy
  is also in the Lustucru repo.

  It is not necessary, but will be helpful to first set up my repo scripts, or
  at least the 'repo' commmand.  These are found at
  https://github.com/Thomas-Walker-Lynch/resource  These also make use of the aforementioned
  system scripts.


2. 

 Get the Lustucru repo.  If you are getting it from github it might look like this:

   ```
   > git clone https://github.com/Thomas-Walker-Lynch/Lustucru.git
   ```

   In the user/lib directory find bashrc_example, and emacs_example. These might have
   more up to date stuff than found in the resource or system versions of the bashrc.

   If you are not using the 'repo' command from the resource repo, then add these to your .bashrc.

   ```
   > PROJECT=Lustucru
   > REPO_DIR="$(pwd)" 
   ```

   If you have not done so yet, install the Z command.  A copy is in the user/bin directory.


3a. If you are using my repo scripts and already have .bashrc setup, then type:

   ```
   > repo Lustucru
   ```

   After that is typed you will be in the $REPO_USER_DIR/build directory and ready
   to work.

3b. If you are not using my repo scripts:

   Set these variables:

   ```
   > PROJECT=Lustucru
   > cd to the repo directory created by the git clone.
   > REPO_DIR="$(pwd)" 
   ```

   If $(pwd) has spaces in any of its components, $REPO_DIR must be put in quotes
   when it is used.

   Setup your .bashrc file.  Find an the exmaple bashrc in
   $REPODIR/user/lib/bashrc_example. Add the definitions shown above to either
   the .bashrc or to the activate scripts found in $REPODIR.

   Find in $REPO_DIR/bin a shell script called 'Z'.  That is the program that makes time stamps.
   The Lustuctru scripts make use of this. Put this in /usr/local/bin. 

   ```
    > ls $REPO_DIR/user
    bin  build  deprecated  document  experiment lib
   ```

   The $REPO_DIR directory is only for overhead files for managing the project. Do
   not add to this directory.  The files created by the developers are in the
   $REPO_DIR/user directory.

   You should put your work in the $REPO_DIR/user/build directory.  Note that the
   contents of the $REPO_DIR/user/build director is *not* saved by git, the contents of
   the build directory are not part of the Lustucru project.  You will need to make
   your own copies if you want to keep them.


4. Copy config* files from $REPO_DIR/user/lib/ to $REPO_DIR/user/lib/build.

  If per chance you create additional build directories, be sure to add them to .gitignore.

  There are three config files.  As I used the repo script (3a above), my present working
  directory is $REPO_DIR/user/build, so I type:

  ```
   > cp $REPO_DIR/user/lib/config* .
   > ls $REPO_DIR/user
   config config_m1 config_m2
  ```

  If you have already run the scripts you will also see `log` and `upstream` in that listing.
  Build lot files will be put in  `log`, and the downloaded tar files will be put in `upstream`.

  The `config' file is for configuration variables that are in common to the various stages
  of the build.  `config_m1' are for those that are specific to the m1 stage.  And, you
  guessed it, `config_m2` is for those specifically related to the m2 stage.

  Edit these files for your configuration.  The scripts will run without querying you
  for any further information, so this is your one chance to configure the build.

  *Be especially careful with the LFS_M2_DEVICE* variable.  If you put the wrong value
  there you can wipeout your system.

  The scripts assume that the destination media has already been low level formatted,
  high level formatted, and that it is already plugged into the system.

  Currently I comment out or do not comment out the frame c3 line in the bin/book_m1
  script to control the download of upstream tar files.

5. for an automatic copmlete build

  The target media is plugged into the computer, and it has been wiped clean.

  ```
   > pwd
   $REPO_DIR/user/build
   > build
  ```

  Build will print the location of the log files.  Tail these to follow the build.
  The frame log is a log of stderr.  The build log is all the output.  Note in
  emacs the auto-revert-tail-mode command.


  

   

