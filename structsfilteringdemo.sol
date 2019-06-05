pragma solidity ^0.5.1;

contract StructFilteringDemo {

    struct Animal {
        bytes32 name;
        uint8 lifespan;
    }

    Animal[] animals;

    function addAnimal(bytes32 name, uint8 lifespan) public {
        Animal memory animal;
        animal.name = name;
        animal.lifespan = lifespan;
        animals.push(animal);
    }

    function filterAnimal(bytes32 name) public view returns (bytes32 _name, uint8 _lifespan) {

        for (uint8 i = 0; i < animals.length; i++) {
            Animal memory animal = animals[i];
            if (name == animal.name) {
                _name = animal.name ;
                _lifespan = animal.lifespan;
            }
        }
    }

    function strToBytes32(string memory name) public pure returns (bytes memory namebytes) {
        namebytes = bytes(name);
    }
}
