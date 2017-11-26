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
	apk  add --no-cache --update ${buildDeps}

RUN	git clone https://github.com/Lymphatus/libcaesium.git && \
	cd libcaesium && \
	chmod +x install.sh && \
	bash install.sh && \
	mkdir build && \
	cd build && \
	cmake .. && \
	make && \
	sudo make install
	
RUN	git clone https://github.com/Lymphatus/caesium-clt.git && \
	cd caesium-clt && \
	mkdir build && \
	cd build && \
	cmake .. && \
	make && \
	sudo make install
		
RUN	apk del ${buildDeps}
RUN	rm -rf /var/cache/apk/*
	
WORKDIR /caesium