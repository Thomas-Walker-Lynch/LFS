
0.  The Lustucru build scripts are designed to run from the command line in a bash shell.


1. Suggested prep


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

3b. cd to the repo directory created by the git clone.

   Set these variables:

   ```
   > PROJECT=Lustucru
   > REPO_DIR="$(pwd)" 
   ```

   If the present working directory has spaces in any of its components, $REPO_DIR
   must be put in quotes when it is used.

   Setup your .bashrc file.  Find an the exmaple bashrc in
   $REPODIR/user/library/bashrc_example. Add the definitions shown above to either
   the .bashrc or to the activate scripts found in $REPODIR.

   ```
    > ls $REPO_DIR/user
    bin  build  deprecated  document  experiment lib
   ```

   The $REPO_DIR directory is only for overhead files for managing the project. Do
   not add to this directory.  The files created by the developers are in the
   $REPO_DIR/user directory.  

   You should put your work in the $REPO_DIR/build directory.  Note that the
   contents of the $REPO_DIR/build director is *not* saved by git, the contents of
   the build directory are not part of the Lustucru project.  You will need to make
   your own copies if you want to keep them.
   


4. set up .bashrc

   Find $REPO_DIR/lib/bashrc_example.

   Find in $REPO_DIR/bin a shell script called 'Z'.  That is the program that makes time stamps.
   The Lustuctru scripts make use of this. Put this in /usr/local/bin. 



2. Note that things placed in the user/build directory are not put in the repo.  See .gitignore.
   The scripts will put subdirectories in the build directory for things it needs to store.
   You should also do your work in the build directory, so as not to pollute the repo.

2. 

1. Copy config* files from lib/ to build.  There are three config files.

2. Edit said config files for your configuration.  Pay particular attention
to the 
