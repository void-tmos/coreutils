all: tarball hash move clean

tarball: *.py
	tar -cvf ${VERSION}.tar.xz $?
	$(info Tarball)

hash: ${VERSION}.tar.xz
	cat ${VERSION}.tar.xz | md5 > ${VERSION}.tar.xz.md5b
	head -c 32 ${VERSION}.tar.xz.md5b > ${VERSION}.tar.xz.md5
	$(info Hash)

move:
	mv ${VERSION}.tar.xz versions/
	mv ${VERSION}.tar.xz.md5 versions/

clean:
	$(info Cleaning)
	rm ${VERSION}.tar.xz.md5b
