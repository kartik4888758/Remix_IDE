// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Saver {
    int256 a;
    int256 b;
    int256 c;

    function set(int256 m, int256 n) public {
        a = m;
        b = n;
        c = a * b;
    }

    function get() public view returns (int256) {
        return c;
    }
}
