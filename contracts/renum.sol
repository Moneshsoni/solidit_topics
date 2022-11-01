pragma solidity  0.8.9;
contract Enum{
    enum Status{
        Pending,
        Shiped,
        Accepted,
        Rejected,
        Cancaled
    }
    Status public status;
    
    function get() public view returns(Status){
        return status;
    }
    
    function set(Status  _status)public{
        status = _status;
    }
    
    //update special status by passing into input
    function cancel()public{
        status = Status.Cancaled;
    }
    
    function reset()public {
        delete status;
    }
}
