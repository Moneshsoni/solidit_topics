pragma solidity 0.8.9;
contract Hash{
    // string public name;
    function hash_func(string memory _name)public pure returns(bytes32){
        return keccak256(abi.encodePacked(_name));
    }
    bytes32 public answer =0x32f1ddff0e6e01c378691decb305d346f842d190a3f36ed9fae9a69470638adf;
    function guess_game(string memory _word)public view returns(bool){
        return keccak256(abi.encodePacked(_word))==answer;
    }
}
