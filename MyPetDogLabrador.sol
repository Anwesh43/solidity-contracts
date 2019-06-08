pragma solidity ^0.5.1;
import "./Animal.sol";
import "./Pet.sol";
import "./Labrador.sol";

interface AnimalSpeech {
    function speak() external returns (string memory);
}

contract MyLabradorPetDog is Animal("DOG"), Pet, Labrador, AnimalSpeech {
    function speak() external returns (string memory _speech) {
        _speech = "Bark";
    }
}
