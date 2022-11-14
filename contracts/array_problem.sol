pragma solidity 0.8.9;
contract Array_problem{

    uint[] public arr = [2,3,1];
    uint[] public arr1;
    function ascending_array()external{
        for(uint i = 0;i<=arr.length;i++){
            arr1.push(i);
        }
    }
    function get_array()public view returns(uint[] memory){
        return arr1;
    }

}
