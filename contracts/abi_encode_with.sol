pragma solidity 0.8.9;
contract Abi_encode{
    uint public a;
    function abi_encode_funnc(uint _a)public view returns(bytes memory){
        return (abi.encode(a));
    }


}
