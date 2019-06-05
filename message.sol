pragma solidity ^0.5.1;

contract MyMessage {
    string message;

    function setMessage(string memory x) public {
        message = x;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
