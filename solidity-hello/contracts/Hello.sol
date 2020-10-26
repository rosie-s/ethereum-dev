// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.22 <0.8.0;

contract Hello {
    string greeting;

    constructor() public{
        greeting = "hello";
    }

    // Read-only function - Not a transaction on the BC
    function getGreeting() public view returns (string memory) {
        return greeting;
    }

    // Transaction - Performing computation, changing state of BC. Will cost gas
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }
}
