#include<iostream>
#include"function.h"
using namespace std;

long long factorial(long long n)
{
    if(n == 1)
    {
        return 1;
    }
    else
    {
        return n*factorial(n-1);
    }
}