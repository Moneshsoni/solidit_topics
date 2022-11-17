// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct{
        uint foo;
    }
    mapping(uint => MyStruct)myStructs;

    function f() public{
        //get a struct from a mapping 
        MyStruct storage myStruct1 = myStructs[1];
        //create a struct in memory
        MyStruct memory myStruct = MyStruct(0);
    }

    function _f(uint[] storage _arr, mapping(uint => address) storage _map,
    MyStruct storage _myStruct)internal{

        //Write
    }

    function g(uint[] memory _arr)public returns(uint[] memory){

    }
  
    function h(uint[] calldata _arr)external{

    }
   
}
