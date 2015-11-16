#include "testa.h"
#include "testB/testb.h"

int a_func(int arg1, int arg2)
{
    return arg1 + arg2;
}

std::string a_func()
{
    std::string ret(("a_func-"));
    ret += b_func_called_in_a();
    return ret;
}

std::string a_func_called_in_b()
{
    return std::string("a_func_called_in_b");
}
