pragma solidity ^0.5.1;

contract Pet {

    string internal name;

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}
