all: opendaylight openvswitch
openvswitch:
	cd ovs; \
	./boot.sh; \
	./configure KARCH=arm \
	CPP="arm-none-linux-gnueabi-gcc -E" \
	AR="arm-none-linux-gnueabi-ar" \
	STRIP="arm-none-linux-gnueabi-strip" \
	OBJCOPY="arm-none-linux-gnueabi-objcopy" \
	LD="arm-none-linux-gnueabi-ld" \
	OBJDUMP="arm-none-linux-gnueabi-objdump" \
	CC="arm-none-linux-gnueabi-gcc" \
	CXX="arm-none-linux-gnueabi-g++" \
	NM="arm-none-linux-gnueabi-nm" \
	AS="arm-none-linux-gnueabi-as" \
	CFLAGS="-march=armv5 -std=gnu99" \
	CCFLAGS="-march=armv5 -std=gnu99" \
	CXXFLAGS="-march=armv5 -std=gnu99s" \
	--host=arm --with-openssl=../../node/deps/openssl;\
	make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabi- \
	CPP="arm-none-linux-gnueabi-gcc -E" \
	AR="arm-none-linux-gnueabi-ar" \
	STRIP="arm-none-linux-gnueabi-strip" \
	OBJCOPY="arm-none-linux-gnueabi-objcopy" \
	LD="arm-none-linux-gnueabi-ld" \
	OBJDUMP="arm-none-linux-gnueabi-objdump" \
	CC="arm-none-linux-gnueabi-gcc" \
	CXX="arm-none-linux-gnueabi-g++" \
	NM="arm-none-linux-gnueabi-nm" \
	AS="arm-none-linux-gnueabi-as" \
	CFLAGS="-march=armv5 -std=gnu99" \
	CCFLAGS="-march=armv5 -std=gnu99" \
	CXXFLAGS="-march=armv5 -std=gnu99" 
opendaylight.tar.gz:
	wget -c -t 0 -O opendaylight.tar.gz https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/distribution-karaf/0.4.1-Beryllium-SR1/distribution-karaf-0.4.1-Beryllium-SR1.tar.gz
opendaylight:
	tar -vxf opendaylight.tar.gz opendaylight/; rm opendaylight.tar.gz
clean:
	rm -rf opendaylight
	
format: clean
	find . -name "*.js" -exec js-beautify -r {} \;	 
	find . -name "*.html" -exec html-beautify -r {} \;	 
	find . -name "*.css" -exec css-beautify -r {} \;	 
