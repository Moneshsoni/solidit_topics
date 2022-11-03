pragma solidity 0.8.9;
//Function modifier reuse code before and / or after function
//Baksic , inputs and sandwitch

contract FunctionModifier{
    bool public paused;
    uint public count;

    modifier whenNotPaused(){
        require(!paused,"paused");
        _;
    }
    
    modifier num(uint _x){
        require(_x<10,"Number is greater than");
        _;
    }

    function number(uint _x)public num(_x){
        count +=_x;
    }

    function setPause(bool _paused)external{
        paused = _paused;
    }

    function inc() external whenNotPaused{
        count += 5;
    }

    function dec()external whenNotPaused{
        count -=2;
    }
    
    modifier sandwitch(){
        count += 10;
        _;
        count *= 2;
        
    }
    
    function foo()external sandwitch{
        count +=1;
    }
  
    
}
