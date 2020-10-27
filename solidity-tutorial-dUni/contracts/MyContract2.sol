// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract MyContract2 {
    /* Conditionals */
    // If, Else
    function isEvenNumber(uint256 _number) public pure returns (bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    uint256[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    // Loops
    function countEvenNumbers() public view returns (uint256) {
        uint256 count = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) {
                count++;
            }
        }
        return count;
    }

    address public owner;

    // address public myAddress = 0x827de34013d0d21ed24E550CfB6cAF79d880cfBC;

    constructor() public {
        owner = msg.sender;
        // owner = myAddress;
    }

    function isOwner() public view returns (bool) {
        return (msg.sender == owner);
    }
}
