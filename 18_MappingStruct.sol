// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

struct Student{
    uint roll_no;
    string name;
    string program;
} // Like C/C++ don't use semicolon (;)

contract StudentMapping
{
    mapping(uint=>Student) mappingRecords;
    Student[] records; // Second way, without using mapping

    function setMappingRecord(uint _roll_no, string memory _name, string memory _program) public {
        mappingRecords[_roll_no] = Student(_roll_no, _name, _program); // One way of using struct constructor
        //mappingRecords[_roll_no] = student({roll_no: _roll_no, name: _name, program: _program}); // Another way using struct constructor
    }

    function getMappingRecord(uint _roll_no) public view returns(Student memory){
        return mappingRecords[_roll_no];
    }

    function setRecord(uint _roll_no, string memory _name, string memory _program) public {
        //without using dictionary
        records.push( Student(_roll_no, _name, _program));   
    }

    function getRecord(uint _roll_no) public view returns(Student memory){
        for(uint i=0; i<records.length; i++){
            if(records[i].roll_no == _roll_no)    
                return records[i];
        }
        Student memory nullStudent;
        return nullStudent;
    }

}

// A Contract has state variables (persistent data), functions (methods), events, and modifiers.
// Define the behavior and rules of decentralized applications (DApps) and facilitate interactions between parties on the blockchain.

// A struct is a user-defined data structure that group together multiple variables of different types into a single composite data type 
// A struct does not has functions and do not exist as independent entities on the blockchain
