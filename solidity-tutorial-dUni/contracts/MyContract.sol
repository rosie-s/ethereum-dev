// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract MyContract {
    /* Variables */
    // State Variables - Stored on BC
    uint256 public myUint = 1;

    // Local Variables = Local to function
    function getValue() public pure returns (uint256) {
        uint256 value = 1;
        return value;
    }

    /* Data Types */
    // uint = Cant have a sign (negative)
    // uint8, uint256 (Different sizes)
    int256 public myInt = 1;
    uint8 public myUint8 = 1;

    // String
    string public myString = "Hey, how are you?";
    // Byte 32
    bytes32 public myBytes32 = "Hello World";

    // Address
    address public myAddress = 0x3E1c666cDb7Ac0037a44dfa977eD9B72659c9661;

    /* Struct */
    // Model any arbitrary data eg. Person vote etc
    struct MyStruct {
        uint256 myUint;
        string myString;
    }
    struct Person {
        uint256 id;
        string name;
    }

    // How to use the Struct
    MyStruct public myStruct = MyStruct(1, "Hello");
}
