// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Using globale variable // For complete details go to site given below
// https://docs.soliditylang.org/en/latest/units-and-global-variables.html

contract GlobalVariables
{

    function getValues() public view returns(uint, uint, address){
        return (block.number, block.timestamp, msg.sender);
    }

    // You can also name the returned variables
    function getVariables() public view returns(uint blockNumber, uint timeStamp, address senderAddress){ 
        return (block.number, block.timestamp, msg.sender);
    }

}