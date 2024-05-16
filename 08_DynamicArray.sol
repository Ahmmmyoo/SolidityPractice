// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract DynamicArray
{
    uint [] arr; 
    
    function setValue(uint value) public {
        arr.push(value);
    }

    function getValueAt(uint index) public view returns(uint)
    {
        return arr[index];
    }

    function setValueAt(uint index, uint value) public{
        arr[index] = value;
    }
    
    function removeValue() public {
        arr.pop();
        // Solidity provides a pop function for dynamic arrays, but it does not return the removed element.
        // Used to remove last element from a dynamic array and basically reduces the size of the array
    }

    function getLength() public view returns(uint){
        return arr.length;
    }

    function getValues() public view returns(uint[] memory) 
    {
        return arr;
    }

}