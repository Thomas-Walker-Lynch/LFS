lfs@debian11§/mnt/sources/binutils-2.38/build§
> make install
make[1]: Entering directory '/mnt/sources/binutils-2.38/build'
/bin/sh ../mkinstalldirs /mnt/lfs/tools /mnt/lfs/tools
make[1]: Nothing to be done for 'install-target'.
make[2]: Entering directory '/mnt/sources/binutils-2.38/build/etc'
make[3]: Entering directory '/mnt/sources/binutils-2.38/build/etc'
make[3]: Nothing to be done for 'install-exec-am'.
make[3]: Nothing to be done for 'install-data-am'.
make[3]: Leaving directory '/mnt/sources/binutils-2.38/build/etc'
make[2]: Leaving directory '/mnt/sources/binutils-2.38/build/etc'
make[2]: Entering directory '/mnt/sources/binutils-2.38/build/gprof'
make  install-recursive
make[2]: Entering directory '/mnt/sources/binutils-2.38/build/intl'
make[2]: Nothing to be done for 'install'.
make[2]: Leaving directory '/mnt/sources/binutils-2.38/build/intl'
make[2]: Entering directory '/mnt/sources/binutils-2.38/build/libiberty'
make[3]: Entering directory '/mnt/sources/binutils-2.38/build/gprof'
Making install in po
make[4]: Entering directory '/mnt/sources/binutils-2.38/build/gprof/po'
make[4]: Nothing to be done for 'install'.
make[4]: Leaving directory '/mnt/sources/binutils-2.38/build/gprof/po'
make[3]: Entering directory '/mnt/sources/binutils-2.38/build/libiberty/testsuite'
make[3]: Nothing to be done for 'install'.
make[3]: Leaving directory '/mnt/sources/binutils-2.38/build/libiberty/testsuite'
make[3]: Entering directory '/mnt/sources/binutils-2.38/build/libiberty/testsuite'
make[3]: Nothing to be done for 'all'.
make[3]: Leaving directory '/mnt/sources/binutils-2.38/build/libiberty/testsuite'
make[2]: Entering directory '/mnt/sources/binutils-2.38/build/gas'
if test -n ""; then \
	/bin/sh ../../libiberty/../mkinstalldirs /mnt/lfs/tools/lib/`gcc -g -O2     -print-multi-os-directory`; \
	/usr/bin/install -c -m 644 ./libiberty.a /mnt/lfs/tools/lib/`gcc -g -O2     -print-multi-os-directory`/./libiberty.an; \
	( cd /mnt/lfs/tools/lib/`gcc -g -O2     -print-multi-os-directory` ; chmod 644 ./libiberty.an ;ranlib --plugin /usr/lib/gcc/x86_64-linux-gnu/10/liblto_plugin.so ./libiberty.an ); \
	mv -f /mnt/lfs/tools/lib/`gcc -g -O2     -print-multi-os-directory`/./libiberty.an /mnt/lfs/tools/lib/`gcc -g -O2     -print-multi-os-directory`/./libiberty.a; \
	case "" in \
	  /*)    thd=;; \
	  *)     thd=/mnt/lfs/tools/include/;; \
	esac; \
	/bin/sh ../../libiberty/../mkinstalldirs ${thd}; \
	for h in ../../libiberty/../include/ansidecl.h ../../libiberty/../include/demangle.h ../../libiberty/../include/dyn-string.h ../../libiberty/../include/fibheap.h ../../libiberty/../include/floatformat.h ../../libiberty/../include/hashtab.h ../../libiberty/../include/libiberty.h ../../libiberty/../include/objalloc.h ../../libiberty/../include/partition.h ../../libiberty/../include/safe-ctype.h ../../libiberty/../include/sort.h ../../libiberty/../include/splay-tree.h ../../libiberty/../include/timeval-utils.h; do \
	  /usr/bin/install -c -m 644 $h ${thd}; \
	done; \
fi
Making install in po
make[2]: Leaving directory '/mnt/sources/binutils-2.38/build/libiberty'
make[3]: Entering directory '/mnt/sources/binutils-2.38/build/gas/po'
make[3]: Nothing to be done for 'install'.
make[3]: Leaving directory '/mnt/sources/binutils-2.38/build/gas/po'
make[2]: Entering directory '/mnt/sources/binutils-2.38/build/bfd'
make  install-recursive
make[4]: Entering directory '/mnt/sources/binutils-2.38/build/gprof'
make[3]: Entering directory '/mnt/sources/binutils-2.38/build/gas'
make[5]: Entering directory '/mnt/sources/binutils-2.38/build/gprof'
make[3]: Entering directory '/mnt/sources/binutils-2.38/build/bfd'
 /usr/bin/mkdir -p '/mnt/lfs/tools/share/man/man1'
 /usr/bin/mkdir -p '/mnt/lfs/tools/bin'
/usr/bin/mkdir: cannot create directory '/mnt/lfs/tools': Permission denied
make[5]: *** [Makefile:788: install-man1] Error 1
make[5]: *** Waiting for unfinished jobs....
 /usr/bin/mkdir -p '/mnt/lfs/tools/share/info'
/usr/bin/mkdir: cannot create directory '/mnt/lfs/tools': Permission denied
make[5]: *** [Makefile:541: install-binPROGRAMS] Error 1
/usr/bin/mkdir: cannot create directory '/mnt/lfs/tools': Permission denied
make[5]: *** [Makefile:1053: install-info-am] Error 1
make[5]: Leaving directory '/mnt/sources/binutils-2.38/build/gprof'
Making install in doc
make[4]: *** [Makefile:951: install-am] Error 2
make[4]: Leaving directory '/mnt/sources/binutils-2.38/build/gprof'
make[3]: *** [Makefile:837: install-recursive] Error 1
make[3]: Leaving directory '/mnt/sources/binutils-2.38/build/gprof'
make[2]: *** [Makefile:945: install] Error 2
make[2]: Leaving directory '/mnt/sources/binutils-2.38/build/gprof'
make[1]: *** [Makefile:6996: install-gprof] Error 2
make[1]: *** Waiting for unfinished jobs....
make[4]: Entering directory '/mnt/sources/binutils-2.38/build/bfd/doc'
 /usr/bin/mkdir -p '/mnt/lfs/tools/share/info'
/usr/bin/mkdir: cannot create directory '/mnt/lfs/tools': Permission denied
make[4]: *** [Makefile:792: install-info-am] Error 1
make[4]: Leaving directory '/mnt/sources/binutils-2.38/build/bfd/doc'
make[3]: *** [Makefile:1683: install-recursive] Error 1
make[3]: Leaving directory '/mnt/sources/binutils-2.38/build/bfd'
make[2]: *** [Makefile:1791: install] Error 2
make[2]: Leaving directory '/mnt/sources/binutils-2.38/build/bfd'
make[1]: *** [Makefile:3119: install-bfd] Error 2
make[4]: Entering directory '/mnt/sources/binutils-2.38/build/gas'
Making install-info in po
 /usr/bin/mkdir -p '/mnt/lfs/tools/share/man/man1'
/usr/bin/mkdir: cannot create directory '/mnt/lfs/tools': Permission denied
 /usr/bin/mkdir -p '/mnt/lfs/tools/share/info'
make[4]: *** [Makefile:1599: install-man1] Error 1
make[4]: *** Waiting for unfinished jobs....
make[5]: Entering directory '/mnt/sources/binutils-2.38/build/gas/po'
make[5]: Nothing to be done for 'install-info'.
make[5]: Leaving directory '/mnt/sources/binutils-2.38/build/gas/po'
/usr/bin/mkdir: cannot create directory '/mnt/lfs/tools': Permission denied
make[4]: *** [Makefile:1909: install-info-am] Error 1
make[5]: Entering directory '/mnt/sources/binutils-2.38/build/gas'
 /usr/bin/mkdir -p '/mnt/lfs/tools/share/info'
/usr/bin/mkdir: cannot create directory '/mnt/lfs/tools': Permission denied
make[5]: *** [Makefile:1909: install-info-am] Error 1
make[5]: Leaving directory '/mnt/sources/binutils-2.38/build/gas'
make[4]: *** [Makefile:1648: install-info-recursive] Error 1
make[4]: Leaving directory '/mnt/sources/binutils-2.38/build/gas'
make[3]: *** [Makefile:1793: install-am] Error 2
make[3]: Leaving directory '/mnt/sources/binutils-2.38/build/gas'
make[2]: *** [Makefile:1648: install-recursive] Error 1
make[2]: Leaving directory '/mnt/sources/binutils-2.38/build/gas'
make[1]: *** [Makefile:5515: install-gas] Error 2
make[1]: Leaving directory '/mnt/sources/binutils-2.38/build'
make: *** [Makefile:2543: install] Error 2

