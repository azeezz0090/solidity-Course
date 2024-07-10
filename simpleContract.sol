// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // Version Statement

contract SimpleStorage {
    
  uint256 myfavouriteNumber; // 0

  // uint256[] listOfFavouriteNumbers;

  struct Person{
    uint256 favouriteNumber;
    string name;
  }

  Person[] public listOfPeople;

  mapping(string => uint256) public nameToFavouriteNumber;


  function store(uint256 argNumber) public virtual  {
        myfavouriteNumber = argNumber;
  }

    // view, pure
  function retrieve() public view returns(uint256){
    return myfavouriteNumber;
  }

  function addPerson(string memory _name, uint256 _favouriteNumber) public {
    listOfPeople.push(Person(_favouriteNumber, _name));
    nameToFavouriteNumber[_name] = _favouriteNumber;
  }

}

