// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract ByteArray
{
    bytes1[] bDynamic; 
    bytes1[3] bStatic; 

    function setValueStatic(uint index, bytes1 _b1) public {
        bStatic[index] = _b1;
    }
    function getValueStatic(uint index) public view returns(bytes1){
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