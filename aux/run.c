#include <stdio.h>
#include <unistd.h>
#include <libcob.h>

int main(int argc, char** argv) {

    int ret;
    void *cob_argv[1];

    if (argc != 3) {
        printf("Sintaxe error: invalid args number\n");
        printf("Sintaxe: run <program nane> '<linkage area>'\n");
        printf("Example: run PROG2024090001 \"T123456789\"\n");
    }

    chdir("builds");

    cob_init(0, NULL);
    cob_argv[0] = argv[2];
    ret = cob_call (argv[1], 1, cob_argv);
    
    cob_stop_run(ret);
}