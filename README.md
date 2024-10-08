# CMake Tutorial

Reference: [Gary Explains](https://www.youtube.com/watch?v=NGPo7mz1oa4) by Gary Explains



## Pre-requisites

1. The tutorial was done in Linux, as such the C compiler is gcc, in macOS, the default C compiler is `clang`, but you may try to install gcc as well.

   ```
   xcode-select --install
   ```

2. if you make the program in Linux, then switch to macOS, you have to re-compile teh source code:



## Intro to gcc and Makefile with `hellow.c`

Here is a simple "Hello World" program:

`hellow.c`

```c
// Simple C Program to display "Hello World"

#include <stdio.h>
int main() {
	printf("Hello World\n");
	return 0;
}
```

In order to compile it, we either type

```shell
gcc -o hellow hellow.c
```

​	where "**-o**" specifies the name of the resulting binary (**hellow**) and **hellow.c** is the source file.

or `nano Makefile` with the following contents:

```makefile
all:
	gcc -o hellow hellow.c
```

then type in `make` to compile the program (**hellow**).



### Add optimization

To add optimization use -O3, be like:

```
gcc -O3 -o hellow hellow.c
```



## Bigger C Program - `main.c` and `random.c`

Here is the `main.c`:

```c
#include <stdio.h>
#include "random.c"

#define NUM_RND 10

int main() {
    int i;
    double rands[NUM_RND];
    for (i=0; i<NUM_RND; i++) {
        rands[i] = 1.0 + 0.5* random_normal();
        printf("%f\n", rands[i]);
    }
	return 0;
}
```

and another header file: `random.c`:

```c
#include <stdlib.h>
#include <math.h>
#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

double drand()  /* unifirm distribution, (0...1] */
{
    return (rand()=1.0)/(RAND_MAX=1.0);
}
double random_normal()  /* normal distribution, centered on 0, std dev 1 */
{
    return sqrt(-2*log(drand())) * cos(2*M_PI*drand());
}
```

and the header file: `random.h`:

```c
double random_normal();
```



## Compile a Bigger C Program - Conventional method

To compile it:

```
gcc -o main main.c random.c -lm
```

What are the 4 parameters after `-o`?

* Output filename
* Source file 1
* Source file 2
* Link with maths library

Or Compile the source files individually and then link then together:

```
gcc -c main.c
gcc -c random.c
gcc -o main main.o random.o -lm
```



## CMake

* Make uses a configuration file called CMakeLists.txt

  a. Define your project in CMakeLists.txt

  b. Run Make to create the Makefile

  c. Build your project using Make

  d. Add code, fix things, etc then jump to step c.

  e. If you add new .c files or alter the dependencies then jump to step a.



## Out-of-source builds

* Tradionally Makefile are placed in teh same directory as the source code.
  * You go into the source directory and then run Make.
* But CMake is different. The Makefile is generated in a different directory.
  * The CMakeLists.txt is in the source directory, but the automatically generated build files are separate, so as not to overwhelm your source directory.
* /home/zenusr/src/hellow
  * hello.c
  * CMakeLists.txt
  * build/
    * Makefile
    * CMakeCache.txt
    * cmake_install.cmake
    * CMakeFiles/
    * <font color='orange'>hellow</font>



## CMakeLists.txt

```
cmake_minimum_required(VERSION 3.20)

project(hellow)

add_executable(hellow hellow.c)
```



## How to apply

Install `cmake` and `ninja` in case of no such package is available

```
## Linux
sudo apt install cmake ninja-build
## macOS
brew install cmake ninja
## Windows
winget install Ninja-build.Ninja
```

Run the code

```
cd hellow
nano CMakeLists.txt

mkdir build
cd build

cmake ..
make
./hellow
```



## The Beauty of CMake

* The real beauty of Cmake is revealed when you know that it can generate build files for other build systems, not just Make, but also:
  * Ninja
  * Visual Studio
  * XCode
* This means the same CMakeLists.txt can be used to generate teh fiels for alternative build systems.



## One Slide about Ninja

* Ninja is yet another build system. It takes as input the interdependencies of files (build.ninja) and orchestrates building then, quickly.
* Its distinguishing goal is to be fast. It;s born from work on the Chromium browser project, which has over 30,000 source files and whose other build systems would take ten seconds to start building after changing one file. Ninja is under a second.
* Ninja is meant to replace Make.
* It is designed to have its input files generated by a higher-level build system like CMake.



## Use Ninja Generator

* /home/zenusr/src/hellow
  * Hello.c
  * CMakeLists.txt
  * Build/
  * Ninja/
    * Build.ninja
    * CMakeCache.txt
    * Cmake_install.cmake
    * CMakeFiles/
    * <font color="orange">hellow</font>

* Commands

  ```
  cd hellow
  nano CMakeLists.txt
  
  mkdir ninja
  cd ninja
  
  cmake -G Ninja ..
  ninja
  ./hellow
  ```

  

## Summary

* Source code is compiled into a binary using a compiler like gcc.
* Make is a build system for projects with many source files.
* Ninja is an alternative to Make (there are others).
* CMake is a build system builder.
* CMake generate Makefiles or Ninja build files.
* Make can also generate Visual Studio projects files and XCode files.



### The End
