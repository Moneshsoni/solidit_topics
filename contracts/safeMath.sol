pragma solidity 0.8.9;
contract SafeMath{
    uint public a;
    uint public b;
    function sub(uint _a, uint _b)external returns(uint){
        a=_a;
        b=_b;
        assert(b<=a);
        return a-b;
    }
}
