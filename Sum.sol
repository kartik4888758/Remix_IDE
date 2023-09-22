// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleAddition {
    
    uint256 public number1;
    uint256 public number2;
    uint256 public result;

    
    constructor(uint256 _number1, uint256 _number2) {
        number1 = _number1;
        number2 = _number2;
    }

    
    function add() public {
        result = number1 + number2;
    }
}
