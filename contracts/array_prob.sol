pragma solidity 0.8.9;
contract Array{
    uint[] public arr;
    function push_function(uint _i)external{
        arr.push(_i);
    }

    function arr_pop(uint _n)external{
        arr.pop();
    }

    function delete_arry(uint _i)external{
        delete arr[_i];
    }

    function get_len()public view returns(uint){
        return arr.length;
    }

    function itarate_arr()external{
        for(uint i=0;i<=10;i++){
            arr.push(i);
        }
    }


    function remove_arr(uint _index)public{
        require(_index<arr.length,"Index out of bounds");
        for(uint i= _index;i<arr.length-1;i++){
            arr[i]=arr[i+1];
        }
        arr.pop();
    }
    
    function test()external{
        arr=[1,2,3,4];
        remove_arr(1);
        assert(arr[0]==1);
        assert(arr[2]==3);
        assert(arr[3]==4);
        assert(arr.length==2);
    }
    
    function get_array()public view returns(uint[] memory){
        return arr;
    }

}
