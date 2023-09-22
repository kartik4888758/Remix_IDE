// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Substract
{
    int a;
    int b;
    int c;

    function set(int p,int q)public
    {
      a=p;
      b=q;
      c=a-b;  
    }

    function get()public view returns(int)
    {
        return c;
    }

}