pragma solidity 0.8.9;
contract Car{
    address public owner;
    string public model;
    address public carAdddr;
    
    constructor(address _owner,string memory _model)payable{
        owner = _owner;
        model = _model;
        carAdddr = address(this);
    }
}


contract CarFactory{
    Car[] public cars;
    function createCar(address _owner, string memory _model)public{
        Car car = new Car(_owner, _model);
        cars.push(car);
    }
}
