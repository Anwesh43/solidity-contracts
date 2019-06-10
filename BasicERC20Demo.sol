pragma solidity >=0.4.24;

import "./ERC20Interface.sol";

contract BasicERC20Demo is ERC20Interface {

    mapping(address => uint) balanceTokenMap;
    uint totalSupplyUnits;
    mapping(address => mapping(address => uint)) allowanceMap;

    constructor(uint _totalSupply) public {
        totalSupplyUnits = _totalSupply;
        balanceTokenMap[msg.sender] = _totalSupply;
    }

    function totalSupply() public view returns (uint) {
        return totalSupplyUnits;
    }

    function balanceOf(address tokenOwner) public view returns (uint) {
        return balanceTokenMap[tokenOwner];
    }

    function transfer(address to, uint tokens) public returns (bool success) {
        require(tokens <= balanceTokenMap[msg.sender]);
        balanceTokenMap[msg.sender] = balanceTokenMap[msg.sender] - tokens;
        balanceTokenMap[to] = balanceTokenMap[to] + tokens;
        success = true;
    }

    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        require(tokens <= balanceTokenMap[from]);
        balanceTokenMap[from] = balanceTokenMap[from] - tokens;
        balanceTokenMap[to] = balanceTokenMap[to] + tokens;
        emit Transfer(from, to, tokens);
        success = true;
    }

    function approve(address spender, uint tokens) public returns (bool) {
        allowanceMap[msg.sender][spender] = tokens;
        emit Approve(spender, tokens);
        return true;
    }

    function allowance(address owner, address spender) public view returns (uint remaining) {
        remaining = allowanceMap[owner][spender];
    }
}
