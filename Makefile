all: makedbg compile
release: makerel compile

clean:
	-rm -rf build makerel makedbg

make: makedbg
makedbg:
	-mkdir build
	cd build && cmake .. -DCMAKE_BUILD_TYPE=Debug
	touch makedbg
makerel:
	-mkdir build
	cd build && cmake .. -DCMAKE_BUILD_TYPE=Release
	touch makerel
compile:
	cd build && make -j4
