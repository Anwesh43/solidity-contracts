pragma solidity ^0.5.1;

contract ExternalDemo {

    uint public k = 2;
    uint public result = 1;

    function multiply(uint a, uint b) external pure returns(uint c) {
        c = a * b;
    }

    function getMultipliedResult() public returns (uint) {
        result = this.multiply(result, k);
        return result;
    }

}
