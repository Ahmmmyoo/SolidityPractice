//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract Base 
{
    function f1() public pure returns(uint)
    {
        return 1;
    }
    function f2() external pure returns(uint)
    {
        return 2;
    }
    function f3() internal pure returns(uint)
    {
        return 3;
    }
    function f4() private pure returns(uint)
    {
        f1();
        //f2();
        f3(); // internal
        return 4;
    }
}

contract Sub is Base
{
    function getValue() public pure returns(uint){
        uint v1 = f1();  // Public accessable
        //uint v2 = f2();  // External not accessable
        uint v3 = f3();  // Internal accessable
        //uint v4 = f4();  // Private not accessable
        return v1 + v3;
    }
}

contract Outside
{
    Base base = new Base();
    uint public f1 = base.f1();   // Public accessable
    uint public f2 = base.f2();   // External accessable
    //uint public f3 = base.f3(); // Internal not accessable
    //uint public f4 = base.f4(); // Private not accessable
}