// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract Counter {
    
    // Solidity automatically generates a function for public states
    // Counter.count()
    uint256 public count = 1;

    function incrementCount() public {
        count++;
    }

    // Can use this to set default value aswell
    // uint256 count = 5;
    // constructor() public { count = 0; }

    // view: We want to view value - not change
    // function getCount() public view returns (uint256) {
    //     return count;
    // }
}
