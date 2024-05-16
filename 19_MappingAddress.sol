// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract MappingAddress
{

    mapping(address=>uint) balanceAmount; 
    
    function setBalance(uint amount) public {
        balanceAmount[msg.sender] = amount; // Using globale variable // For complete details go to site given below
                                            // https://docs.soliditylang.org/en/latest/units-and-global-variables.html
    }

    function getBalance() public view returns(uint){
        return balanceAmount[msg.sender];
    }

    function getAdressBalance(address _address) public view returns(uint){ //address type doesn't need to mention the location
        return balanceAmount[_address];
    }

}