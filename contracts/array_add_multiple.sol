pragma solidity 0.8.9;
contract Arr_loop{
    function add_multiple()public pure returns(uint){
        uint temp;
        for(uint i =0;i<=3;i++){
            for(uint j =0;j<=3;j++){
                temp +=j;
            }
        }
        return temp;
    }
}
