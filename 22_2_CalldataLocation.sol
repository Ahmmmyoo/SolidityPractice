// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalldataExample {
    // Correct way to declare external function parameters
    function getValue(uint8[3] calldata values) public pure returns (uint8[3] calldata) {
        //values[0] = 1; // TypeError: Calldata arrays are read-only.
        return values;
    }
}
