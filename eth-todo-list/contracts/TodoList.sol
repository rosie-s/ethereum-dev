// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.22 <0.8.0;

contract TodoList {
    // State variables are written to the blockchain
    // State of the smart contract on the blockchain
    uint public taskCount = 0; // read value from smart contract using public

    //Struct allows you to define your own data type
    struct Task {
        uint id; // uint is used cause the value cant be negative
        string content;
        bool completed;
    }

    //Store on blockchain
    mapping(uint => Task) public tasks;

    event TaskCreated(uint id, string content, bool completed);

    event TaskCompleted(uint id, bool completed); 

    constructor() {
        // Default task
        createTask("Update your Todo list");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        // Broadcast event
        emit TaskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }
}
