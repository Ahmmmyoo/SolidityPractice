// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

contract ForLoop
{
    uint[5] arr; 
    function setValues() public
    {   
        uint i;
        //for(uint i=0; i<arr.length; i++)
        for(i=0; i<arr.length; i++)
            arr[i] = i*i;

        i=0;
        for(; i<arr.length; i++)
            arr[i] = i*i;
        
        for(i=0; i<arr.length;){
            arr[i] = i*i;
            i++;
        }

        i=0;
        for(; i<arr.length;){
            arr[i] = i*i;
            i++;
        }

        i=0;
        for(; ;){ //Also possible, but need extra thing like if and break
            if(i >= arr.length)
                break;
            arr[i] = i*i;
            i++;
        }
    }

    function getValues() public view returns(uint[5] memory){
        return arr;
    }

}

// In Solidity, both for and while loops can be used to achieve the same functionality

// Preferred Use Case (Good Programing Practice)
// The for loop is used when you know the exact number of iterations in advance
// The while loop is used when you don't know the exact number of iterations in advance
