pragma solidity  0.8.9;
contract Variable{
    uint public number;
    function increase_number(uint a,uint b,uint c)public{
        number = a+b+c;
    }
    function get_number()public view returns(uint){
        return number;
    }
}