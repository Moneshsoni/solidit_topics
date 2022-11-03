pragma solidity 0.8.9;
//Fallback executed when the function does not exiest
//directly send ether

contract Fallback {
    event Log(string func,address sender, uint value,bytes data);
    fallback() external payable{
        emit Log("fallbback",msg.sender,msg.value,msg.data);
    }
    
    receive() external payable{
        emit Log("receive",msg.sender,msg.value,"");
    }
}
