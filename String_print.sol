// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract String_print
{
    string name;

    function set(string memory n)public 
    {
        name=n;
    }
    function get()public view returns(string memory)
    {
        return name;
    }
}

