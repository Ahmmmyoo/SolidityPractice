// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract ReciveTransfer
{
    address payable sourceAddress = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    function payCurrency() public payable{ }

    function getBalance() view public returns(uint){
        return address(this).balance; 
    }

    function transferCurrency() public  { // Maybe public or private as this method is called from inside as well as outside
        // Note: Remember you can transfer, only when you have sufficient amount in CA
        // So, the CA must have sufficient amount to send
        sourceAddress.transfer(1 ether);
        sourceAddress.transfer(1 gwei);
        sourceAddress.transfer(1 wei);
    }
}