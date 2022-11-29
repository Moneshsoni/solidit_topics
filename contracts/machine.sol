pragma solidity 0.8.9;
import "./storage_exm.sol";
contract Machine{
    Storage public s;
    constructor(Storage a)public{
        s=a;
        uint calculateResult = 0;
    }
    
    function setValue(uint x)public returns(bool){
        s.setVar;
        return true;
    }
    
    function getValue()public view returns(uint){
        return s.num();
    }
}
