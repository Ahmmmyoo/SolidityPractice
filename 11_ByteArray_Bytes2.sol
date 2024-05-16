// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract ByteArray
{
    bytes2[] bDynamic; 
    bytes2[3] bStatic; 

    function setValueStaticOne(uint index, bytes1 _b1) public {
        bStatic[index] = _b1;
    }
    function setValueStatic(uint index, bytes2 _b2) public {
        bStatic[index] = _b2;
    }
    function getValueStatic(uint index) public view returns(bytes2){
        return bStatic[index];
    }
    function getStaticLength() public view returns(uint){
        return bStatic.length;
    }

    function setValueDynamicOne(bytes1 _b1) public {
        bDynamic.push(_b1);
    }
    function setValueDynamic(bytes2 _b2) public {
        bDynamic.push(_b2);
    }
    function getValueDynamic(uint index) public view returns(bytes2){
        return bDynamic[index];
    }

    function getDynamicLength() public view returns(uint){
        return bDynamic.length;
    }

}