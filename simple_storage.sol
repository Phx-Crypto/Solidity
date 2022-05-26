// SPDX-License-Identifier: MIT

pragma solidity 0.6.0;

contract SimpleStorage {

    // This will get initialized to 0!
    uint256 public favoriteNumber;
    bool favoriteBool = true;
    string favoriteString = "String";
    int256 favoriteInt = -5;
    address favoriteAddress= 0xF6A5F37503Fa0A51028Bbf7eA9C9e4E0a4834522;
    bytes32 favoriteBytes = "cat";

     struct People {
         uint256 favoriteNumber;
         string name;
     }

    // array: A way of storing a list of an object or type
    //Dynamic Array: An array that can change size
    //Fixed Arrays: Can't change size
    People[] public people;
    // A dictionary like data structure, with  value per key
    mapping(string =>uint256) public nameToFavoriteNumber;

     People public person = People({favoriteNumber:2, name: "Patrice"});


    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
