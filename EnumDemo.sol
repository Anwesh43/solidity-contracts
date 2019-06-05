pragma solidity ^0.5.1;

contract EnumDemo {

    enum Fruits {APPLE, MANGO, PINEAPPLE, PEAR}
    mapping(uint8 => string) fruitMap;
    function init() public {
        fruitMap[uint8(Fruits.APPLE)] = "apple";
        fruitMap[uint8(Fruits.MANGO)] = "mango";
        fruitMap[uint8(Fruits.PINEAPPLE)] = "pineapple";
        fruitMap[uint8(Fruits.PEAR)] = "pear";
    }
    function convertToFruits(uint8 fruitType) public view returns (string memory fruit) {
        fruit = fruitMap[fruitType];
    }
}
