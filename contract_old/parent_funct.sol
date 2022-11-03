pragma  solidity 0.8.9;
contract A{
    event Log(string message);
    function foo()public virtual{
        emit Log("A.foo");
    }
    
    function bar()public virtual{
        emit Log("A.bar");
    }
}

contract B is A{
    function foo()public virtual override{
        emit Log("B.fooo");
        A.foo();
    }
    
    function bar()public virtual override{
        emit Log("B.bar");
        super.bar(); 
    }
}
