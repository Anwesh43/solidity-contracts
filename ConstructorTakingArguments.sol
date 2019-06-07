pragma solidity ^0.5.1;

contract ConstructorTakingArguments {

    uint public age;
    string public name;

    constructor(string memory _name, uint _age) public {
        age = _age;
        name = _name;
    }
}
