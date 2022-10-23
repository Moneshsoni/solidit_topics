pragma solidity 0.8.9;
contract Enum{
    enum Status{
        None,
        Pending,
        Shiped,
        completed,
        Rejected,
        Cancaled
    }
    Status public status;
    struct Order{
        address buyer;
        Status status;
    }
    
    Order[] public orders;
    
    function get() public view returns(Status){
        return status;
    }
    
    function set(Status _status)external{
        status =  _status;
    }
    
    function ship() external{
        status = Status.Shiped;
    } 
    
    function reset_enum()external{
        delete status;
    }
    
}
