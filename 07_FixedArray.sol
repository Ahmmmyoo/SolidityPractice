// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract FixedArray
{
    uint[5] arr;

    function setValue(uint index, uint value) public
    {
        arr[index] = value;
    }

    function getValueAt(uint index) public view returns(uint)
    {
        return arr[index];
    }

    function getLength() public view returns(uint)
    {
        return arr.length;
    }

    function getValues() public view returns(uint[5] memory) 
    {
        return arr;
    }

    function setValues(uint[3] memory values) public // Pass array in argument, enter [4,5,6] from interface
    {
        arr[0] = values[0];
        arr[1] = values[1];
        arr[4] = values[2];
    }

    function getFixedArray() public pure returns (uint[3] memory) {
        //uint8[3] memory fixedArray = [1,2,3]; // By default value in one line [1,2,3] are considered uint8
        uint[3] memory fixedArray = [uint(1), uint(2), uint(3)]; // For other type use explcit converstion
        //fixedArray[0] = 1;
        //fixedArray[1] = 1;
        //fixedArray[2] = 1;   
        return fixedArray;  
     }

    function getFixedMultipleArrays() public pure returns (uint[3] memory, uint[3] memory) {
        //uint8[3] memory fixedArray = [1,2,3]; // By default value in one line [1,2,3] are considered uint8
        uint[3] memory fixedArray = [uint(1), uint(2), uint(3)]; // For other type use explcit converstion
        //fixedArray[0] = 1;
        //fixedArray[1] = 1;
        //fixedArray[2] = 1;     
        uint[3] memory fix2 = fixedArray; // Not creating new copy as same location and reference type
        fix2[2] = 99; //Both arrays will be changed
        return (fixedArray, fix2);
    }
}
