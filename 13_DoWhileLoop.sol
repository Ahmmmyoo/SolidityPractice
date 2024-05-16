// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract DoWhileLoop
{
    uint[5] arr; 

    function setValues() public
    {
        uint i=0;
        do{
            arr[i] = i*i;
            i++;
        }
        while(i<arr.length);
    }

    function getValues() public view returns(uint[5] memory){
        return arr;
    }

}