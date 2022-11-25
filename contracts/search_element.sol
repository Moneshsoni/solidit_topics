pragma solidity 0.8.9;
contract Array{
    uint[] public arr;
    uint public n=10;
    function put_array(uint[] memory _arr)external{
        arr = _arr;
    }
    
    function check_element()public view returns(string memory){
        for(uint i=0;i<arr.length;i++){
            if(arr[i]==n){
                return "number exiest";
            }
        }
        return "number not exiest";
    }

    function get_length()public view returns(uint){
        return arr.length;
    }
}
