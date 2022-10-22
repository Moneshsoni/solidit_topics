pragma solidity 0.8.9;
contract Add{
    uint public sum;
    function get_sum()external {
        for(uint i=0; i<=5; i++){
            if(i==4){
                continue;           
            }
            sum += i;     
        }
    }   
    function get_sum_res()public view returns(uint){
        return sum;
    }
}

