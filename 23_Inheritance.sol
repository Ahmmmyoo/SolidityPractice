//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Person
{
    uint age;
    string public name = "Ali";
    
    constructor(uint _age, string memory _name){
        age = _age;
        name = _name;
    }

    function setAge(uint _age) public virtual{ //virtual is mandatory if overridden in derived.
        // A virtual function is a function declared in a base contract. This function can be 
        // overridden by a function with the same name and signature in a derived contract.
        age = _age;
    }

    function getAge() public view returns(uint){
        return age;
    }

    function f1() public pure virtual returns(uint){
        return 1;
    }

}

contract Student is Person
{    
    uint public roll_no;
    constructor(uint _age, string memory _name, uint _roll_no) Person(_age, _name){ //Calling super constructor
        roll_no = _roll_no;
        //Calling parent constructor here not possible 
    }

    function setAge(uint _age) public override{
        // Inheriting from a contract with a virtual function, the override keyword in the derived 
        // can be used to explicitly indicate an implementation for the virtual function.
        super.setAge(_age);
    }

    function f1() public pure override returns(uint){
        uint val = super.f1(); // Without super keyword, will cause a recursive call to the f1 function 
        return val + 1;
    }

}

// The use of virtual and override provides clarity and helps prevent accidental mistakes by making 
// the code more readable and helps developers understand the intended use of functions in inheritance.

