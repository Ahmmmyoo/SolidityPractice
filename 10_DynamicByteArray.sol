// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract DynamicByteArray
{
    bytes b; 

    function setValueB(bytes1 _b1) public {
        b.push(_b1);
    }

    function getB1At(uint index) public view returns(bytes1){
        return b[index];
    }

}