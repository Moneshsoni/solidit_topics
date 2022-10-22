pragma solidity  0.8.9;

contract Ownable{
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    
    modifier onlyOwner(){
        require(msg.sender == owner, "Not a owner");
        _;
        
    }
    
    function setOwner(address _newOwner)external onlyOwner{
        require(_newOwner != address(0), "Invalid owner");
    }
    
    function onlyOwnercanCall()external onlyOwner{
        
    }
    
    function anyoneCanCall() external{
    
    }
}
