// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract HotelRoom {
    address payable public owner;

    enum Status {Vacant, Occupied}
    Status currentStatus;

    event Occupy(address _occupant, uint256 _value);


    constructor()  {
        owner = msg.sender;
        currentStatus = Status.Vacant;
    }

    // Modifier - Runs before function is executed
    modifier onlyWhileVacant {
        // require: Ensure some conditions are met before the next code is executed
        // Check status
        require(currentStatus == Status.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint256 _amount) {
        // Check Price
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
    }

    
    // receive(): Creates a function that will get triggered whenever you pay the smart contract.
    // so if you send eth to the address this is the function that will be called
    // external: It can be called outside the SC
    
    receive () external payable onlyWhileVacant costs(2 ether) 
    {
        // Update Status
        currentStatus = Status.Occupied;
        // Pay owner to book hotel room
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
