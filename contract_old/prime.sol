pragma solidity 0.8.9;
contract Prime{
    function check_prime(uint n)public pure returns(uint){
        if(n<1){
            return 0;
        }
        for(uint i =2;i<n;i++){
            if(n%i==0){
                return 0;
            }
        }
        return 1;
    }
}
