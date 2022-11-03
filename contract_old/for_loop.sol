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
    
    function whi_loop(uint _n)external pure returns(uint){
        uint sum;
        uint j=1;
        while(j<=_n){
            // if(j==3){
            //     continue;
            // }
            sum += j;
            j++;
        }
        return sum;
    }
}
