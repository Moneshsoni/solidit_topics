pragma solidity 0.8.9;
library ArrayLib{
    function find(uint[] storage arr,uint x)internal view returns(uint){
        for(uint i=0; i<arr.length; i++){
            if(arr[i]==x){
                return i;
            }
        }   
        revert("Not found");
    }
        
}
contract Test{
    using ArrayLib for uint[];
    uint[] public arr = [1,3,5,8];
    function testFind()external view returns(uint i){
        return arr.find(5);
    }
}
