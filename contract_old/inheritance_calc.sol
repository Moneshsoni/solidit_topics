pragma solidity 0.8.9;
contract  Base{
    function add(uint a, uint b)public pure virtual returns(uint){
        return a+b;
    }
    //two element can multiply
    function mul(uint a, uint b)public pure virtual returns(uint){
        return a*b;
    }
    
    function sub(uint a , uint b)public pure returns(uint){
        return a-b;
    }   
}
contract Child is Base{
    function add(uint a, uint b)public pure virtual override returns(uint){
        return a+b+10 ;    
    }
}

contract SubChild is Child{
    function add(uint a, uint b)public pure override returns(uint){
        return a+b-5 ;    
    }
}
