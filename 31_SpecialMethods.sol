//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

contract Payment
{
    address payable user = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
    
    //function pay() public payable
    //{}

    receive() external payable{
        //user.transfer(1000000000000000000); // 1 Ether = 10^18 Wei // You can receive in CA and then transfer to user, Amount should be less than CA balance.
        // A special function, automatically called when a contract receives Ether without any data. 
        // Defined with the receive keyword, take no arguments and no return type.
    }

    //fallback() external{
        // The fallback function always receives data (Call Data)
        // Called when a contract is sending Ether and the transaction doesn't match any existing function 
        // When a contract is sending Ether with data but doesn't have a receive function.
    //}

    fallback() external   // But to also receive Ether, you should mark it as payable. 
    {}

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function transfer() public {
         //user.transfer(1000000000000000000); // 1 Ether = 10^18 Wei
         //user.transfer(100); //Default in wei
         user.transfer(1 ether); //Transfer from CA, so balance of CA should be greater 
    }

    function transferDirectly() public payable{ // Should be payable
         user.transfer(msg.value); //Transfer from A 2 B, by using CA 
    }
}

// The absence of the function keyword in receive and fallback is a design choice 
// to keep the syntax clean and specific within the context of Ethereum transactions