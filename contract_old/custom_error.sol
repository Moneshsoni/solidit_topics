pragma solidity 0.8.9;
contract Custom_error{
    error MyError(address caller, uint i);
    function testCustomError(uint _i)public view{
        if(_i>10){
            revert MyError(msg.sender,_i);
        }
        
    }
}
