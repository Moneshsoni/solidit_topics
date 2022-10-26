pragma solidity 0.8.9;
library ArrayLib {
    function find(uint[] storage arr, uint n)public view returns(uint) {
        for (uint i = 0; i <= arr.length; i ++) {
            if (arr[i] == n) {
                return i;
            }
        }
        revert("Can't found");
    }
}

contract TestArray {
    using ArrayLib for uint[];
uint[] public arr = [1, 2, 3];
function testFind()external view returns(uint i) { // return ArrayLib.find(arr,2);
    return arr.find(2);
}
}
