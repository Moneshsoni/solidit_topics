pragma solidity 0.8.9;
contract Compare{
    function get_compare(string memory _name)public pure returns(string memory){
        require(keccak256(abi.encodePacked(_name))==keccak256(abi.encodePacked("Moneshsonni")), "The name not matched");
        return "This is the  write name";  
    }
}
