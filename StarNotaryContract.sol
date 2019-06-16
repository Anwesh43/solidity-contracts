pragma solidity ^0.5.1;

contract StarNotary {

    string public starName;
    address public owner;

    event starClaimed(address owner);

    constructor() public {
        starName = "My Star";
    }

    function claimStar() public {
        owner = msg.sender;
        emit starClaimed(msg.sender);
    }
}
