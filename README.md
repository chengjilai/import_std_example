# import_std_example

a minimal example demonstrating C++23 `import std;` feature using clang++ and libc++

tested with:
- clang 21.1.8
- libc++ 21.1.8

```bash
make run
```

this will:
1. precompile the standard library module (`std.pcm`)
2. compile `hello.cc`
3. run the resulting executable

```bash
make clean
```
