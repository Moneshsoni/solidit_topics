pragma solidity 0.8.9;
library Search{
    function indexOf(uint[] storage self, uint value)public view returns(uint){
        for(uint i=0;i<self.length;i++){
            if(self[i]==value){
                return i;
            }
            
        // return uint(1);
        }
    }
}

contract Test{
    using  Search for uint[];
    uint[] data;
    
    constructor() public{
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
    }
    
    function isValuePresent() external view returns(uint){
        uint value = 3;        
        //Now data is representing the library
        uint index = data.indexOf(value);
        return index;
    }
}
