pragma solidity ^0.5.1;


contract BaicDatatypeContract {

    address public owner;
    uint8 public number = 2;
    bool public flag = true;
    uint balance;

    function setAddress(address addr) public {
        owner = addr;
        balance = owner.balance;
    }

    function getInitialBalance() public view returns (uint) {
        return balance;
    }
}
