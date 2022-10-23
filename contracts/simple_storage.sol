pragma solidity 0.8.9;
contract Storage{
    string public text;
    function set_tex(string calldata _text)external{
        text = _text; 
    }
    
    function get_val()public view returns(string calldata){
        return text;
    }
}
