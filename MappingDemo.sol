pragma solidity ^0.5.1;

contract MappingsDemo {

    mapping(string => string) capitalCountryMap;

    function addCapital(string memory country, string memory capital) public {
        capitalCountryMap[country] = capital;
    }

    function getCapital(string memory country) public view returns (string memory capital) {
        capital = capitalCountryMap[country];
    }

    function deleteCountry(string memory country) public {
        delete(capitalCountryMap[country]);
    }
}
