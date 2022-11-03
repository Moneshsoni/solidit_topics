// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract Day6 {
    function reverseDigit(uint n) public pure returns(uint){
        uint reverse = 0;
        uint remainders;
        while(n!=0){
            remainders = n%10;
            reverse = reverse*10+remainders;
            n /= 10;
        }
        return reverse;
    }
}
