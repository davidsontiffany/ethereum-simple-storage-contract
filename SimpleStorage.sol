// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage {
    uint256 private storedNumber;
    string public message;
    address public owner;

    constructor() {
        owner = msg.sender;
        message = "Hello, Blockchain!";
    }

    function setNumber(uint256 _number) public {
        storedNumber = _number;
    }

    function getNumber() public view returns (uint256) {
        return storedNumber;
    }

    function setMessage(string memory _message) public {
        message = _message;
    }
}