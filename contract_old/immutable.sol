pragma solidity 0.8.9;
contract  Immutable{
    address public immutable owner = msg.sender;
    uint public x;
    function foo() external{
        require(msg.sender == owner);
        x+=1;
    }
}
