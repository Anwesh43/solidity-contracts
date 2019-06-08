pragma solidity ^0.5.1;

contract Labrador {
    uint internal height;
    uint internal age;
    string internal color;

    function setProperties(uint _height, uint _age, string memory _color) public {
        height = _height;
        age = _age;
        color = _color;
    }

    function getProperties() public view returns (uint _height, uint _age, string memory _color) {
        _color = color;
        _height = height;
        _age = age;
    }
}
