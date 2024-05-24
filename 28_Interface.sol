//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0;

interface ParentA {
    // constructor(){} // Even constructor not possible in interface, also a method
    function test() external returns (uint256);
}

interface ParentB {
    function test() external returns (uint256);
}

interface SubInterface is ParentA, ParentB {
    // Must redefine test in order to assert that the parent
    // meanings are compatible.
    function test() external override(ParentA, ParentB) returns (uint256);
}

contract SubContract is ParentA, ParentB { // Should be abstract if provide not implementatin
    // Must redefine test in order to assert that the parent
    // meanings are compatible.
    function test() external pure override(ParentA, ParentB) returns (uint256){
        return 250;
    }
}

interface Token {
    enum TokenType { Fungible, NonFungible } // Only declaration
    struct Coin { string obverse; string reverse; }  // Only declaration
    function transfer(address recipient, uint amount) external; // Only declaration
}

// Interfaces are similar to abstract contracts, but they cannot have any functions implemented. 
// There have further restrictions:
// They cannot inherit from other contracts, but they can inherit from other interfaces.
// All declared functions must be external in the interface, even if they are public in the contract.
// They cannot declare a constructor.
// They cannot declare state variables.
// They cannot declare modifiers (pure, view etc).