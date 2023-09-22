// SPDX-License-Identifier: MIT
// pragma solidity ^0.8.13;

// contract VotingEligibility {
//     int public votingAge = 18;

//     function checkEligibility(uint256 _age) public view returns (string memory) {
//         if (_age >= votingAge) {
//             return "You are eligible to vote!";
//         } else {
//             return "You are not eligible to vote.";
//         }
//     }
// }

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Vote
{
    int public age=18;

    function eligible(int age)public view retunr
}