pragma solidity ^0.5.1;

contract ConstructorDemo {

    uint private a;
    uint private b;

    constructor() public {
        a = 10;
        b = 20;
    }

    function getA() public view returns (uint) {
        return a;
    }

    function getB() public view returns (uint) {
        return b;
    }
}
