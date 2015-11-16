#include "testA/testa.h"
#include "testB/testb.h"

int c_func(int arg1, int arg2)
{
    return b_func(arg1, arg2) + a_func(arg1, arg2);
}

std::string c_func()
{
    std::string ret("c_func:a:");
    ret += a_func();
    ret += "-b:";
    ret += b_func();
    return ret;
}

