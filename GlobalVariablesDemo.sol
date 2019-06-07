pragma solidity ^0.5.1;

contract GlobalVariablesDemo {

    function getBlockDetails() public view returns (uint _blocknumber , uint _gaslimit, uint _difficulty, address _coinbase, uint _timestamp) {
        _blocknumber = block.number;
        _gaslimit = block.gaslimit;
        _difficulty = block.difficulty;
        _coinbase = block.coinbase;
        _timestamp = block.timestamp;
    }

    function getMsgDetails() public  view returns(bytes memory _data, address _sender, bytes4  _sig) {
        _data = msg.data;
        _sender = msg.sender;
        _sig = msg.sig;
    }

    function getTxDetails() public view returns(uint _gasprice, address _origin) {
        _gasprice = tx.gasprice;
        _origin = tx.origin;
    }

    function getNow() public view returns(uint _now) {
        _now = now;
    }

    function checkEtherFenny() public pure returns (bool _flag) {
        _flag =  1 ether == 1000 finney;
    }

    function checkMinHour() public pure returns (bool _flag) {
        _flag = 1 hours == 60 minutes;
    }
}
