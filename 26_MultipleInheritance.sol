//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Base1 {
    constructor() {}
}

contract Base2 {
    constructor() {}
}

// Constructors are executed in the following order:
//  1 - Base1
//  2 - Base2
//  3 - Derived
contract Derived is Base1, Base2 {
    constructor() Base2() Base1() { // This order does not matter, not necessary if default constructor
    }
}

// Assigning value to Parent attribute 
contract Shape {
    string public name = "";
    constructor(string memory _name) { name = _name; }
}

// Directly specify in the inheritance list
contract Square is Shape("Square Shap") {
    constructor() {}
}

// Using initiazation list of the derived constructor.
contract Traingle is Shape {
    constructor(string memory _name) Shape(_name) {}
}

// Languages that allow multiple inheritance have to deal with several problems. 
// One is the Diamond Problem. Solidity is similar to Python in that it uses “C3 Linearization” 
// to force a specific order in the directed acyclic graph (DAG) of base classes. 
// This results in the desirable property of monotonicity but disallows some inheritance graphs.