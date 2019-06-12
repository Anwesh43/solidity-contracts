pragma solidity >=0.4.24;

contract BaseContract {
    string public name;
    constructor(string memory _name) public {
        name = _name;
    }

    function getNameCharAt(uint i) public view returns (byte _char) {
        bytes memory nameBytes = bytes(name);
        return nameBytes[i];
    }
}

contract DerivedContract is BaseContract{

    uint money;
    constructor(string memory _name, uint _money) BaseContract(_name) public {
        money = _money;
    }

    function money1000() public view returns (uint _moneyThousand) {
        _moneyThousand = money * 1000;
    }
}
