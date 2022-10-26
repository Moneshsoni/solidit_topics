// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract Day4 {
    // function prime(uint n)public pure returns(uint){
    //     if(n<1){
    //         return 0;
    //     }
    //     for(uint i=2;i<n; i++){
    //         if(n%i==0){
    //             return 0;
    //         }
    //     }
    //     return 1;
    // }

    function power(uint x, uint y)public pure returns(uint){
        uint value=1;
        while(y!=0){
            value *=x;
            y--;
        }
        return value;
    }    
}
