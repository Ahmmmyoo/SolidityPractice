// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract IntegerOverflow
{
    uint8 count = 255; 
    function getCount() public view returns(uint8) {
        return count + 1;
    }
}
