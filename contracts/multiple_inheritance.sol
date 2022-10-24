pragma solidity 0.8.9;
contract X{
    function func()public pure  virtual  returns(string memory){
        return "X";
    }
}

contract Y is X{
    function func()public pure virtual override returns(string memory){
        return "Y";
    }
}

contract W is Y{
    function func()public pure virtual override returns(string memory){
        return "W";
    }
}

contract Multiple_inheritance is X,Y,W{
    function func()public pure override(X,Y,W) returns(string memory){
        return "Multiple Inheritance";
    }
}
