FROM alpine

RUN	buildDeps="git \
	make \
	bash \
	gcc \
	autoconf \
	nasm \
	automake \
	libtool \
	libjpeg-turbo-dev \
	linux-headers \
	cmake \
	g++ \
	sudo" && \
	apk  add --no-cache --update ${buildDeps} && \
	git clone https://github.com/Lymphatus/libcaesium.git && \
	cd libcaesium && \
	chmod +x install.sh && \
	bash install.sh && \
	mkdir build && \
	cd build && \
	cmake .. && \
	make && \
	sudo make install && \
	git clone https://github.com/Lymphatus/caesium-clt.git && \
	cd caesium-clt && \
	mkdir build && \
	cd build && \
	cmake .. && \
	make && \
	sudo make install && \
	apk del ${buildDeps} && \
	rm -rf /var/cache/apk/*
	
WORKDIR /caesium