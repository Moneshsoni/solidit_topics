pragma solidity 0.8.9;
contract Maping{
    mapping(address => uint)public balances;
    mapping(address => mapping(address => bool)) public isfriend;
    function example_mapping()external{
        balances[msg.sender]=120;
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)];
        balances[msg.sender]+=100;
    }

    function delete_mapping()external{
        delete balances[msg.sender];
    }
    
    function nested_mapping(address _second_add)external{
        isfriend[msg.sender][address(_second_add)] =true;
    }
}
