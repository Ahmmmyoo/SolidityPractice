// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
//pragma solidity 0.5.0;

// enum is a user-defined data type like struct. Allow to define a custom data type with a finite set of values 
// Each value is associated with an integer index, starts from 0 and increments by 1 for each subsequent value
// enum is a "selection" or "enumeration" data type, it represents values that can be selected from
enum Day { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday } // Like C/C++ don't use semicolon (;)

contract EnumType
{
    Day currentDay = Day.Tuesday;
    
    function setDay(Day _day) public {
        currentDay = _day;
    }

    function getDay() public view returns(Day) { //enum type doesn't need to mention the location
        return currentDay; //return integer values [0, 1, .... n]
    }

    function getDayName() public view returns(string memory) { // This methods shows readibility improved
        string memory dayName = "";
        if(currentDay == Day.Monday)
            return dayName = "Monday";
        else if(currentDay == Day.Tuesday)
            dayName = "Tuesday";
        else if(currentDay == Day.Wednesday)
            dayName = "Wednesday";
        else if(currentDay == Day.Thursday)
            dayName = "Thursday";
        else if(currentDay == Day.Friday)
            dayName = "Friday";
        else if(currentDay == Day.Saturday)
            dayName = "Saturday";
        else if(currentDay == Day.Sunday)
            dayName = "Sunday";
        return dayName;
    }
}