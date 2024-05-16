// SPDX-License-Identifier: GPL-3.0

//pragma solidity >= 0.7.0 < 0.8.1;
pragma solidity ^0.8.0;

contract Identity
{
    string name = "ABC";
    uint age; 

    constructor(uint _age, string memory _name){
        name = _name;
        age = _age;
    }

    function getName() public view returns(string memory)  {
        return name;
    }

    function getAge() public view returns(uint){
        return age;
    }

    function setName(string memory _name) public 
    {
        name = _name;
    }

    function setAge(uint _age) public 
    {
        age = _age;
    }

}
