pragma solidity 0.8.9;
contract Array_problem{
    uint[] public arr = [2,3,1];
    function buble_sort()public{
        // uint[] memory arr = new uint[](3);
        // arr[0]=3;
        // arr[1]=2;
        // arr[2]=1;
        uint length = arr.length;
        for(uint i = 0;i<arr.length-1;i++){
            for(uint j=0;j<arr.length-1;j++){
                if(arr[j]>arr[j+1]){
                    uint current_value = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = current_value;
                }
            }
        }
    }

    function get_array()public view returns(uint[] memory){
        return arr;
    }
}
