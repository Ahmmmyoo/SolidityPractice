// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract WhileLoop
{
    uint[5] arr; 

    function setValues() public
    {
        uint i=0;
        while(i<arr.length){
            arr[i] = i*i;
            i++;
        }
    }

    function getValues() public view returns(uint[5] memory){
        return arr;
    }

}