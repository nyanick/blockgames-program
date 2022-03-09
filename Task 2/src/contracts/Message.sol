// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Message {

    string private prefix = "Hello ";
    string public message;

    function storeMessage (string memory _message) public {
        message =  _message;
    }

    function retrieveMessage() public view returns (string memory){
        //we use this encoder for low gaz consumption
        return string(abi.encodePacked(prefix,message));
    }
}