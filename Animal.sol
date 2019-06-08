pragma solidity ^0.5.1;

contract Animal {
    string internal species;

    constructor(string memory _species) public {
        species = _species;
    }

    function getSpecies() public view returns (string memory _species) {
        _species = species;
    }
}
