pragma solidity 0.8.9;
contract Event{
    event Log(string message, uint val); 
    event IndexdLog(address indexed sender, uint val);
    function event_test()external{
        emit Log("foo", 123);
        emit IndexdLog(msg.sender, 123);
    }
    
    event Message(address indexed _from,address indexed _to,string message);
    function sendMessage(address _to, string calldata message)external{
        require(msg.sender!=_to,"Both address are same");
        emit Message(msg.sender,_to,message);
    } 
}
