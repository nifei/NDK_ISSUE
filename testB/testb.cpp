#include "testb.h"
#include "testA/testa.h"

int b_func(int arg1, int arg2)
{
    return arg1 * arg2;
}

std::string b_func()
{
    std::string ret(("b_func-"));
    ret += a_func_called_in_b();
    return ret;
}

std::string b_func_called_in_a()
{
    return std::string("b_func_called_in_a");
}
