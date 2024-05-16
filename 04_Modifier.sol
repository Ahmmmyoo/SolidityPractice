// SPDX-License-Identifier: GPL-3.0

//pragma solidity >= 0.7.0 < 0.8.1;
pragma solidity ^0.8.0;

contract Modifier 
{
    string name = "ABC";

    constructor(){
        name = "Alice";
    }

    function getName() public view returns(string memory) {
        return name;
    }

    function getNamePure() public pure returns(string memory) {
        string memory _name = "CED";
        return _name;
    }

    function setName(string memory _name) public 
    {
        name = _name;
    }

}
