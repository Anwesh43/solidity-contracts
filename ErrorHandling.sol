pragma solidity ^0.5.1;

contract ErrorHandling {

    function divide(uint a, uint b) public pure returns (uint _result) {
        if (b == 0) {
            revert();
        }
        _result = a / b;
    }

    function multiplication(int a, uint b) public pure returns (uint _result) {
        require(a > 0);
        uint au = uint(a);
        _result = au * b;
    }
}
