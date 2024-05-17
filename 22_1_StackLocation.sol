// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract StorageStorage
{
    function getValue() public pure returns(uint8){
        // Primitive types like uint8, bool, address, etc. are not reference types 
        // and are automatically stored on the stack by default.
        uint8 localValue = 100; 
        
        //uint8 memory localValue = 100; // TypeError: Data location can only be specified for array, struct or mapping types, but "memory" was given.
        // The error shows trying to specify a data location (memory in this case) 
        // for a non-reference type (uint8), which is not allowed. 
        return localValue;
    }

}