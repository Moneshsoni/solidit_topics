pragma solidity 0.8.9;
contract Calculator{
    uint public a;
    uint public b;
    address public owner;
    constructor(uint _a,uint _b){
        a=_a;
        b=_b;
        owner = msg.sender;

    }
    function add()public view returns(uint,address){
        return ((a + b),owner);
    }
}
