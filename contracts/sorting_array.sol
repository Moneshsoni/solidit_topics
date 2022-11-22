pragma solidity 0.8.9;
contract Bublesort{
    uint[] public arr = [1,4,6];
    uint public count=1;
    function buble_sort()public{
        uint length = arr.length-1;
        // for(uint i=0;i<length;i++){
            for(uint j=0;j<length;j++){
                if(arr[j]==arr[j+1]){
                    count = 1;  
                }else{
                    count += 1;
                }
            }
        // }
    }

    function get_arr()public view returns(uint){
        return count;
    }
}
