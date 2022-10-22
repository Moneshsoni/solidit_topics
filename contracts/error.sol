pragma solidity 0.8.9;
//require , revert, assert
// After the condition not full fill the gas will refund
//and state updates are reverted
// custom error save gas
contract Error{
    //Require error
    function testRequire(uint _i)external pure returns(uint){
        require(_i<=10,"The number is greater than 10");
        return _i;
    }
    
    function testRevert(uint _i)external pure returns(uint){
        if(_i>1){
            return _i;
            if(_i>2){
                return _i;
                if(_i>10){
                    revert("i>10");
                }
            }
        }
    }
}

