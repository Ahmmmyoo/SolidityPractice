// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract Contact
{
    mapping(string=>string) contacts; 

    function setContact(string memory nameKey, string memory contact) public {
        contacts[nameKey] = contact;
    }

    function getContact(string memory nameKey) public view returns(string memory){
        return contacts[nameKey];
    }

    function removeContact(string memory nameKey) public {
        delete contacts[nameKey];
        // To differentiate between existing and non-existing keys, use a secondary 
        // mapping or a separate boolean variable to keep track of key existence
        // mapping(string => bool) public exists; // check if key exist
    }
}

// You cannot retrieve all values of a mapping in a single operation 
// The design of the EVM does not support iterating over mappings
// You can use array to store all key and then iterate array and get dict values