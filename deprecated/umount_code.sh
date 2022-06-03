  test -d "$M2_ROOT/dev" && find "$M2_ROOT/dev"  -mindepth 1 -type d -exec umount {} >& /dev/null '&&' echo "unmounted:" {} \;
  test -d "$M2_ROOT/run" && umount "$M2_ROOT/run" && echo 'unmounted "$M2_ROOT/run"'
  test -d "$M2_ROOT/proc" && umount "$M2_ROOT/proc" && echo 'unmounted "$M2_ROOT/proc"'
  # probably will not find anything
