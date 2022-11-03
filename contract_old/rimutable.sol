pragma solidity 0.8.9;
contract Immutable{
    //coding convention to upercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable  MY_UINT;
    constructor (uint _myUint){
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}
