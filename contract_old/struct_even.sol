pragma solidity 0.8.9;
// contract Receiver{
//     event Log(bytes data);
//     function transfer
// }

contract Student_struct{
    event Student_even(string name,uint number,uint id, bool status);
    struct Student{
        string name;
        uint number;
        uint id;
        bool status;
    }
    Student[] public students;
    function create_student(string memory name,uint number,uint id,bool status)public{
        students.push(Student(name, number,id,status));
        emit Student_even(name,number,id,status);
    }
}
