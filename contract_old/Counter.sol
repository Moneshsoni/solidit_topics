pragma solidity 0.8.9;
contract Counter{
    uint public count;
    function inc() external{
        count +=5;
    }
    
    function dec() external{
        count -= 2;
    }
}
