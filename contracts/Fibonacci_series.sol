pragma solidity 0.8.9;
import "./calculator.sol";
contract Fibo is Calculator{
    uint public arr;
    function fibonacci(uint n)public pure returns(uint){
        uint a=0;
        uint b=1;
        uint c;
        if(n==0){
        return a;
        }else{
            for(uint i =2;i<=n;i++){
                c = a+b;
                a=b;
                b=c;
                // arr.push(b);
            }
            return b;
        }
    }
}
