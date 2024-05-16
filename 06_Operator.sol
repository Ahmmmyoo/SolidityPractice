//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract operators
{
    uint8 public val1;
    uint8 public val2;
        
    constructor()
    {
        val1 = 5;
        val2 = 6;
    }

    function getValue() public view returns(uint8)
    {   
        //uint8 res = ~val1;
        //uint8 res = val1 & val2;
        return val1 >> 2;
    }

    function setValues(uint8 _v1, uint8 _v2) public 
    {
        val1 = _v1;
        val2 = _v2;
    }
} 