pragma solidity 0.8.9;
contract A{
    string public name ="Contract A";
}

contract B is A{
    constructor(string memory _name){
        name = _name;
    }
    function get_name()public view returns(string memory){
        return name;
    }
}
