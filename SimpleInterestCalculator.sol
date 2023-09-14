// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleInterestCalculator {
    
    uint256 public principalAmount;
    uint256 public rateOfInterest;
    uint256 public timePeriod;
    uint256 public simpleInterest;

    
    constructor(uint256 _principalAmount, uint256 _rateOfInterest, uint256 _timePeriod) {
        principalAmount = _principalAmount;
        rateOfInterest = _rateOfInterest;
        timePeriod = _timePeriod;
    }

    
    function calculateSimpleInterest() public {
        
        simpleInterest = (principalAmount * rateOfInterest * timePeriod) / 100;
    }
}
