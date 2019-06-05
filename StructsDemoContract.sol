pragma solidity ^0.5.1;

contract StructsDemoContract {

    struct Person {
        string name;
        uint8 age;
        uint salary;
    }

    mapping(string => Person) personMap;

    function addPerson(string memory name, uint8 age, uint salary) public {
        Person memory person;
        person.name = name;
        person.age = age;
        person.salary = salary;
        personMap[name] = person;
    }

    function getPersonDetails(string memory name) public view returns (string memory personName, uint8 age, uint salary) {
        Person memory person = personMap[name];
        personName = person.name;
        age = person.age;
        salary = person.salary;
    }
}
