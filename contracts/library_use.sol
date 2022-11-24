    pragma solidity 0.8.9;

    import {Search} from "./library.sol";

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
            uint value = 5;
            
            //Now data is representing the library
            uint index = data.indexOf(value);
            return index;
        }
    }
