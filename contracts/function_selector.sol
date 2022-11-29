pragma solidity 0.8.9;
contract FunctionSelector{
    function getSelector(string calldata _func) external pure
    returns(bytes4){
        return bytes4(keccak256(bytes(_func)));
    }

    function NumSelector(string calldata _func1)external pure returns(bytes4){
        return bytes4(keccak256(bytes(_func1)));
    }
}

contract Receiver{
    event Log(bytes data);

    event Log2(bytes data1);
    
    function transfer(address _to,uint _amount)external{
        emit Log(msg.data);

        // "0xa9059cbb0000000000000000000000004b20993bc
        // 481177ec7e8f571cecae8a9e22c02db000000000000000000000000000000000000000000000000000000000000007b"
    }

    function setNum(uint a)external{
        emit Log2(msg.data);
    }
}



// 0xcd16ecbf00000000000000000000000000000000000000000000000000000000000004bc
