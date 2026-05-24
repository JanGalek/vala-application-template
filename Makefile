
build: 
#	git mv data/hello-again.desktop data/hello-again.desktop.in
#	git mv data/hello-again.metainfo.xml data/hello-again.metainfo.xml.in
	meson setup build --prefix=/usr
install: 
	cd build && ninja && ninja install
uninstall: 
	cd build && ninja uninstall
clean: 
	rm -rf build