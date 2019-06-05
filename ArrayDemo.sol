pragma solidity ^0.5.1;

contract ArrayDemoContract {

    int[5] ar = [1, 2, 3, 4, 5];

    int[] public dynAr = new int[](0);

    int public k = 0;

    function pushToDynamic(int i) public {
        dynAr.push(i);
    }

    function getDynArr(uint i) public view returns (int) {
        return dynAr[i];
    }

    function getAr(uint i) public view returns (int) {
        return ar[i];
    }

    function testDynamicMemoryArray() public returns (int) {
        int[] memory memArr = new int[](10);
        memArr[uint(k)] = (k + 1) * 10;
        k = k + 1;
        return memArr[uint(k - 1)];
    }

}
