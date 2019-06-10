pragma solidity >=0.4.24;

contract ERC20Interface {

    string public constant name = "AnweshToken";

    string public constant symbol = "MT";

    uint public constant decimals = 10;

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approve(address indexed spender, uint tokens);

    function totalSupply() public view returns (uint);
    function balanceOf(address owner) public view returns (uint);
    function transfer(address to, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
    function approve(address spender, uint tokens) public returns (bool success);
    function allowance(address owner, address spender) public view returns (uint remaining);

}
