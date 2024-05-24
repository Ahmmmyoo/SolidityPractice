//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Page
{
    uint number;
    uint public textSize = 10;
    
    constructor(uint _number, uint _textSize)
    {
        number = _number;
        textSize = _textSize;
    }

    function setNumber(uint _number) public
    {
        number = _number;
    }

    function getNumber() public view returns(uint)
    {
        return number;
    }

    function setTextSize(uint _textSize) public
    {
        textSize = _textSize;
    }

}

contract Book
{    
    Page public page = new Page(1, 12);
    Page[] public pages = [new Page(1, 12)];
    uint public page_number = page.getNumber();

    constructor(){
        //page = new Page(1, 12);
        //page.setNumber(1);
        //page.setTextSize(12);
    }

    function getPageTextSize() view public returns(uint){
        return page.textSize(); // text_size implicitly created for public text_size inside Page Class
        //return page.textSize; // Not Valid
    }
    
    function addPage() public {
        pages.push(new Page(1, 12));
    }
}

