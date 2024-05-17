// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
struct Student{
    uint roll_no;
    string name;
}
enum Day{Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday}

contract Contact
{
    /* All types are possible for Map Values */
    mapping(string=>string) public strMap; 
    mapping(string=>uint[]) public arrMap; // Push values, then access with key and index
    mapping(string=>string[]) public strDynamicArrMap; 
    mapping(string=>string[5]) public strFixedArrMap; // Access with key and index 
    mapping(string=>bytes4) public bytes4Map; // Access with key and index 
    mapping(string=>bytes) public bytesMap; // Push values, then access with key and index
    mapping(string=>bytes[]) public bytesArrMap;  // Push values, then access with key and index
    mapping(string=>Day) public enumMap; 
    mapping(string=>Student) public structMap; 
    mapping(string=>Student[]) public structArrMap;  // Push values, then access with key and index 
    
    /* All types are not possible for Map Key */
    //mapping(uint[3] => uint) public fixedArrayKeyMap;     //
    //mapping(string[]=>uint[]) public strDynamicArrKeyMap; // Not Possible
    //mapping(mapping(uint=>uint)=>string) public mapKeyMap;// Not Possible 
    mapping(bytes4=>string) public bytes4KeyMap;            // Possible
    mapping(bytes=>string) public bytesKeyMap;              // Possible
    //mapping(bytes[]=>string) bytesArrKeyMap;              // Not Possible 
    mapping(Day=>string) enumKeyMap;                        // Possible 
    //mapping(Day[]=>string) enumArrKeyMap;                 // Not Possible 
    //mapping(Student=>string) structKeyArrMap;             // Not Possible 
    //mapping(Student[]=>string) structArrKeyMap;           // Not Possible  

    constructor(){
        arrMap['1'].push(100); 
        bytesMap['1'].push(0x10);
        bytesMap['2'].push(0x41);

        bytes[] memory b = new bytes[](1);
        b[0] = bytes("4545");
        bytesArrMap['1']= b;
        // OR
        //bytesArrMap["1"] = new bytes[](2);
        //bytesArrMap["1"][0][0] = 0x60;
    }
}