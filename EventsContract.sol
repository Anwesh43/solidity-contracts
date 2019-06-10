pragma solidity ^0.5.1;

contract EventsContract {
    struct Bidder {
        string name;
        uint bidValue;
    }

    event HighBid(string name, uint bidValue);

    event FailedBid(string name, uint bidValue);

    Bidder public bidder;

    constructor(uint startingBid) public {
        bidder.bidValue = startingBid;
    }

    function bid(string memory name, uint bidValue) public {
        if (bidValue > bidder.bidValue) {
            bidder.name = name;
            bidder.bidValue = bidValue;
            emit HighBid(name, bidValue);
        } else {
            emit FailedBid(name, bidValue);
        }
    }
}
