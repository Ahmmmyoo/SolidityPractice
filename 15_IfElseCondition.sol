// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract IfElse
{

   function returnGreater(uint num1, uint num2) public pure returns(string memory) {
        // abi.encodePacked used to encode multiple arguments into a single byte string
        // Concatenates the arguments without padding 
        // resulting a more compact encoding compared to abi.encode 
        if( num1 > num2)
            return string(abi.encodePacked(num1, " is greater"));
        else if (num2 > num1)
            return string(abi.encodePacked(num2, " is greater"));
        else
            return "Equal Numbers";
    }

   function returnEqualTernary(uint num1, uint num2) public pure returns(string memory) {        
        return ( num1 == num2? "Equal" : "Not Equal");
    }

}

// Solidity does not have a built-in switch statement. 
// However, you can achieve similar functionality if, else if, and else statements. 