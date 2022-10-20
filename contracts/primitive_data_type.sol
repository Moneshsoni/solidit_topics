pragma solidity 0.8.9;
contract Primtive{
    function boole(bool student)public pure returns(string memory){
        if(student == true){
            return "Student is available";
        }else{
            return "Student is not available";
        }
    }
    
    function sign(int number)public pure returns(string memory){
        if(number<=-10){
            return "String is less than 10";   
        }else{
            return "string is not less than 10";
        }
    }
}