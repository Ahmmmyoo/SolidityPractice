// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract ReciveTransfer
{
    function payCurrency() public payable{ // Just make a method payable to recieve money into Contract Account (CA)
                                           // Should be public or external as this method is called from outside
    }

    function getBalance() view public returns(uint){
        return address(this).balance; // This is how to return balance of Contract Account (CA)
                                      // Coversion to address is required to call balance attribute
    }
}