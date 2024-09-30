# CMake Tutorial

Reference: [Gary Explains](https://www.youtube.com/watch?v=NGPo7mz1oa4) by Gary Explains



## Intro to gcc and Makefile

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



## Add optimization

To add optimization use -O3, be like:

```
gcc -O3 -o hellow hellow.c
```



## Bigger C Program

Here is the `random.c`:

```c
#include <stdio.h>
#include "random.h"

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

and another header file: `random.h`:

```c
#include <stdio.h>
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



## How to Compile a Bigger C Program

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

