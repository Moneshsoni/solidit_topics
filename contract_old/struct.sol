pragma solidity 0.8.9;
contract Structs{
    struct Car{
        string model;
        uint year;
        address owner;
    }
    Car public car;
    Car[] public cars;
    mapping(address => Car[])public carsByOwner;
    function struct_example()external {
        Car memory toyota = Car("Toyota",1990,msg.sender);
        Car memory lambo= Car({year:1980,model: "Lamborginni",owner:msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
        cars.push(Car("ferari",2020,msg.sender));
        Car storage _car = cars[0];
        _car.year = 1990;
        delete _car.owner;
        delete cars[1];
        
    }
        
}
 

