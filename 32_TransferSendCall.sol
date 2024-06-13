//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

//transfer vs send vs call
contract TransferSendCall
{
    bytes data;

    function usingTransfer(address payable _to) public payable
    {                            // Does not return any value // fixed 2300 gas
        _to.transfer(msg.value); // Reverts the transaction on failure.
    }

    function usingSend(address payable _to) public payable
    {                                    // returns bool, true on success // fixed 2300 gas
        bool send = _to.send(msg.value); // Does not revert on failure, handle by checking the return value
        require(send, "Failure! Ether not sent");
    }

    function usingCall(address payable _to) public payable
    {
        // Returns a tuple, boolean indicating success, bytes data containing the returned data.
        // Does not revert on failure, handle by checking the return value
        
        //(bool send, )  = _to.call{value: address(this).balance}("");      // Style-1
        //(bool send, bytes memory _data) = _to.call{value: msg.value}("");   // Style-2 // Calling without bytes
        (bool send, bytes memory _data) = _to.call{gas: 10000, value: msg.value}("func_signature(uint256 args)"); //// Style-3
        require(send, "Failure! Ether not sent");
        data = _data;
    }

    function getData() public view returns(bytes memory) {
        return data;
    }
}