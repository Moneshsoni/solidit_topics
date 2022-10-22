pragma solidity 0.8.9;
contract GlobalVariables {
    function block_coinbase()public view returns(address) {
        return block.coinbase;
    }

    function block_difficulty()public view returns(uint) {
        return block.difficulty;

    }
    
    

    function block_gaslimit()public view returns(uint) {
        return block.gaslimit;
    }

    function block_number()public view returns(uint) {
        return block.number;
    }

    function block_timestamp()public view returns(uint) {
        return block.timestamp;
    }

    function msg_data()public view returns(bytes calldata) {
        return msg.data;
    }

    function msg_sender()public view returns(address) {
        return msg.sender;
    }

    // function msg_vaue()public view returns(uint){
    //     return msg.value;
    // }

    function tx_gasprice()public view returns(uint) {
        return tx.gasprice;
    }

    function tx_origin()public view returns(address) {
        return tx.origin;
    }
}
