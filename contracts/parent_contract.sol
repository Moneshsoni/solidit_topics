pragma solidity ^0.8.9;
contract A{
    event Log(string message);
    
    function foo() public virtual{
        emit Log("A.foo calledd");
    }
    
    function bar()public virtual{
        emit Log("A.bar called");
    }
}

contract B is A{
    function foo() public virtual override{
        emit Log("B.bar called");
        super.bar();
    }
    
    function bar() public virtual override{
        emit Log("C.bar called");
        super.bar();
    }
}

contract C is A{
    function foo()public virtual override{
        emit Log("C.foo called");
        A.foo();
    }
    
    function bar() public virtual override{
        emit Log("C.bar called");
        super.bar();
    }
}

contract D is B,C{
    function foo() public override(B,C){
        super.foo();
    }
    
    function bar() public override(B,C){
        super.bar();
    }
}
