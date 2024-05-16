// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract ByteArray
{
    bytes[3] bStatic; //each location saves bytes (more than one byte)
    bytes bDynamic; //each location saves one byte

    function setValueStatic(uint index, bytes memory _b1) public {
        bStatic[index] = _b1;
    }
    function getValueStatic(uint index) public view returns(bytes memory){
        return bStatic[index];
    }
    function getStaticLength() public view returns(uint){
        return bStatic.length;
    }


    function setValueDynamic(bytes1 _b1) public {
        bDynamic.push(_b1);
    }
    function getValueDynamic(uint index) public view returns(bytes1){
        return bDynamic[index];
    }

    function getDynamicLength() public view returns(uint){
        return bDynamic.length;
    }

}