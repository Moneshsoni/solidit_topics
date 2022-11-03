// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract Day6 {
    function sumarray(uint[] memory arr,uint len)public pure returns(uint){
        uint sum =0;
        for(uint i=0;i<len;i++){   
            sum += arr[i];
        }
        return sum;
    }
}
