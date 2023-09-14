// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CompoundInterestCalculator {
    function calculateCompoundInterest(
        uint256 principal,
        uint256 rate,
        uint256 time
    ) external pure returns (uint256) {
        require(principal > 0, "Principal amount must be greater than zero");
        require(rate > 0, "Interest rate must be greater than zero");
        require(time > 0, "Time must be greater than zero");

        
        uint256 interest = principal * (10**18 + rate)**time / 10**18 - principal;

        return interest;
    }
}
