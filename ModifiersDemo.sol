pragma solidity ^0.5.1;

contract ModifierDemo {

    uint private count = 0;

    function incrementCount() public {
        count = count + 1;
    }

    modifier countGreaterThan10 {
        if (count > 10) {
            _;
        } else {

        }
    }

    function getX100() countGreaterThan10 public view returns (uint _x100) {
        _x100 = 100 * count;
    }
}
