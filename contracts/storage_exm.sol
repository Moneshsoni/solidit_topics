pragma solidity 0.8.9;
contract Storage{
    uint public num;
    constructor(uint v){
        num = v;
    }
    
    function setVar(uint v)external{
        num =v;
    }
}
