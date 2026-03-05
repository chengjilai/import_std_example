.PHONY: run clean
run: hello
	./hello
hello: std.pcm hello.cc
	clang++ -std=c++23 -stdlib=libc++ -fmodule-file=std=std.pcm -o hello std.pcm hello.cc
std.pcm: /usr/share/libc++/v1/std.cppm
	clang++ -std=c++23 -stdlib=libc++ -Wno-reserved-module-identifier --precompile -o std.pcm /usr/share/libc++/v1/std.cppm
	# clang++ -std=c++23 -stdlib=libc++ -Wno-reserved-identifier --precompile -o std.pcm /usr/share/libc++/v1/std.cppm
clean:
	rm -f std.pcm hello
