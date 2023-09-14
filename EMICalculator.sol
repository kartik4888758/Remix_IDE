// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EMICalculator {

    uint256 public principalAmount; 
    uint256 public annualInterestRate; 
    uint256 public loanTenure; 

   
    constructor(uint256 _principalAmount, uint256 _annualInterestRate, uint256 _loanTenure) {
        principalAmount = _principalAmount;
        annualInterestRate = _annualInterestRate;
        loanTenure = _loanTenure;
    }

    
    function calculateEMI() public view returns (uint256) {
        require(principalAmount > 0, "Principal amount must be greater than zero");
        require(annualInterestRate > 0, "Annual interest rate must be greater than zero");
        require(loanTenure > 0, "Loan tenure must be greater than zero");

        
        uint256 monthlyInterestRate = (annualInterestRate * 10**18) / (12 * 100); 

        
        uint256 emiNumerator = principalAmount * monthlyInterestRate * ((1 + monthlyInterestRate)**loanTenure);
        uint256 emiDenominator = ((1 + monthlyInterestRate)**loanTenure) - 1;

        uint256 emi = emiNumerator / emiDenominator;

        return emi;
    }
}
