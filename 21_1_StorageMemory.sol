// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract StorageMemory
{
    uint8[5] stateArray = [1, 2, 3, 4, 5];

    function getArrays() public view returns(uint8[5] memory stateArr, uint8[5] memory localMemArr){
        uint8[5] memory localArray = stateArray;
        localArray[4] = 99;
        return (stateArray, localArray);
    }
}

//  Data locations
// Stack
    //Fundamental part of the EVM where local variables and function call 
    // information are stored during the execution of a function
    // Last-In-First-Out (LIFO) data structure. Local variables (primitive) 
    // are automatically allocated space on the stack and managed by the EVM
    // area but has limited size

// Memory: 
    // Temporary storage area that exists only during the execution 
    // of a function call. Used for storing temporary data within a function
    // Memory is explicitly declared using the memory keyword 
    // Used for reference type variable
    // Cheaper than storage

// Storage
    // Persistent storage area of a contract. It's where the contract's state 
    // variables are stored. Storage pointer is explicitly declared inside 
    // method and pointing to existing state variable
    // Most Expensive in terms of gas costs

// Calldata
    // Immutable area that contains the function arguments. A variable with the 
    // calldata data location cannot be declared inside a function. 
    // Read-only and cannot be modified. Used for reference type variable 
    // More gas-efficient for read-only operations
    // Cheaper than storage and memory in terms of gas costs
    