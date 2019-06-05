pragma solidity ^0.5.1;

contract StringBytesDemoContract {

    string public name = "hello world";
    bytes public tempBytes;

    function getIndexAt(uint i) public view returns (byte _letter) {
        bytes memory temp = bytes(name);
        _letter = temp[i];
    }


    function setTempBytes(string memory s) public {
        tempBytes = bytes(s);
    }
}
