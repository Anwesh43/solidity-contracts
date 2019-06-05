pragma solidity ^0.5.1;

contract TypeConversion {

    uint public b = 260;
    uint8 public a;

    function convert() public {
        a = uint8(b);
    }
}
