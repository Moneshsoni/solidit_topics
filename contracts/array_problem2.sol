// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract Day3 {
   uint[] public arr = [3,2,1];
   uint[] public arr1 = [10,2,1];
   function get_sum_array()external view returns(uint){
       uint temp =0 ;
       for(uint i=0; i<arr.length;i++){
           temp += arr[i];
       }
       return temp;
   }

    function get_mul_array()external view returns(uint){
    //    uint[] memory arr1=[4,3,2];
       uint temp =1 ;
       for(uint i=0; i<arr1.length;i++){
           temp *= arr1[i];
       }
       return temp;
   }
   
}
