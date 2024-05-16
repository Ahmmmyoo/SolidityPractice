// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract FixedByteArray
{
    bytes1 b1 = "A"; 
    //bytes1 b1 = 0x41; 
    bytes2 b2 = 'A'; // Padding with zeros for index 1 i.e. b2[1] = 0x00, so b2 = 0x4100
    
    function setValueB1(bytes1 _b1) public {
        b1 = _b1;
        //_b1 is represented as an array, however, it behaves like a single-byte 
        // variable and allows you to store and manipulate individual bytes.
        // To ensure minimal storage costs for single-byte values, you can use uint8 
        // for integers in the range of 0 to 255, which is essentially a single byte: 
        // Further, you can also, convert uint8 to bytes1, as given
        //uint8 myByte = 255;
        //b1 = bytes1(myByte);  //Make sure myByte should be uint8 not int8
    }

    function setValueB2(bytes2 _b2) public {
        b2 = _b2;  
    }

    //function setValueB2At(uint index, bytes1 _b1) public {
    //    b2[index] = _b1; // Immutable, so you cannot change it
    //}

    function getB1() public view returns(bytes1){
        return b1;
    }

    function getB1At(uint index) public view returns(bytes1){
        return b1[index];
    }

    function getB2() public view returns(bytes2){
        return b2;
    }

    function getB2At(uint index) public view returns(bytes1){
        return b2[index];
    }

    function getB1Length() public view returns(uint){
        return b1.length;
    }

    function getB2Length() public view returns(uint){
        return b2.length;
    }
}
