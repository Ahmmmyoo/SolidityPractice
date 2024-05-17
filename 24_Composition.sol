//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Page
{
    uint number;
    uint public text_size = 10;
    
    constructor(uint _number, uint _text_size)
    {
        number = _number;
        text_size = _text_size;
    }

    function setNumber(uint _number) public virtual
    {
        number = _number;
    }

    function getNumber() public view returns(uint)
    {
        return number;
    }

}

contract Book
{    
    Page public page = new Page(1, 12);
    uint public page_number = page.getNumber();

    function getPageTextSize() view public returns(uint){
        return page.text_size(); // text_size implicitly created for public text_size inside Page Class
        //return page.text_size; // Not Valid
    }
}

