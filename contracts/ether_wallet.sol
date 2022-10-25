pragma solidity 0.8.9;
contract EtherWallet{
    address payable public owner;
    constructor(){
        owner = payable(msg.sender);
    }
    
    receive() external payable{}
    
    function withdraw(uint _amount)external{
        require(msg.sender == owner, "Caller is not a owner");
        payable(msg.sender).transfer(_amount);
        
        
        //call method for transfer ether
        // (bool sent,)= msg.sender.call{value:_amount}("");
        // require(sent, "Fail to send ether");
    }
    
    function getBalance()external view returns(uint){
        return address(this).balance;
    }
}
