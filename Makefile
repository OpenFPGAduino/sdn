all: opendaylight
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
