  test -d "$M2_FILESYSTEM/dev" && find "$M2_FILESYSTEM/dev"  -mindepth 1 -type d -exec umount {} >& /dev/null '&&' echo "unmounted:" {} \;
  test -d "$M2_FILESYSTEM/run" && umount "$M2_FILESYSTEM/run" && echo 'unmounted "$M2_FILESYSTEM/run"'
  test -d "$M2_FILESYSTEM/proc" && umount "$M2_FILESYSTEM/proc" && echo 'unmounted "$M2_FILESYSTEM/proc"'
  # probably will not find anything
