build:
	echo "Nothing to build. Execute make install/uninstall"

install:
	install bin/* ${PREFIX}/bin/ -m 0700

uninstall:
	rm ${PREFIX}/bin/termux-install64 ${PREFIX}/bin/termux-install32 ${PREFIX}/bin/termux-chroot64 ${PREFIX}/bin/termux-chroot32 ${PREFIX}/bin/termux-remove64 ${PREFIX}/bin/termux-remove32
