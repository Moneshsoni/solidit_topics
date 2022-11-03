pragma solidity 0.8.9;
contract Storage{
    string public text;
    string public text1;
    //44601 gas cost
    function set_tex(string calldata _text)external{
        text = _text; 
    }
    //44973 gas cost
    function set_text1(string memory _text1)external{
        text1 = _text1; 
    }

    function get_text1()public view returns(string memory){
        return text1;
    }

    function get_text()public view returns(string memory){
        return text;
    }
}
