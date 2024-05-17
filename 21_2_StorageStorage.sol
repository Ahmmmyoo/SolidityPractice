// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract StorageStorage
{
    uint8[5] stateArray = [1, 2, 3, 4, 5];

    function getArrays() public returns(uint8[5] memory stateArr, uint8[5] memory localMemArr){
        //uint8[5] storage localArray; // TypeError: This variable is of storage pointer type and can be accessed without prior assignment, which would lead to undefined behaviour.
        uint8[5] storage localArray = stateArray; // To remove above error, storage pointers must always point to an existing storage location
        localArray[4] = 99;
        return (stateArray, localArray);
        // Remix not shows the return value of methods not view or pure
        // Therefore, use another view method to check the change
    }

    function getArraysView() public view returns(uint8[5] memory stateArr){
        return (stateArray); 
        //return (stateArray, localArray); // localArray does not exist here
    }
}