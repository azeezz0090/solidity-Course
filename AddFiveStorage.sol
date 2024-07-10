//SPDX-License-Identifier: MIT


pragma solidity 0.8.18;

import {SimpleStorage} from "./simpleContract.sol";

contract AddFiveStorage is SimpleStorage {
    //+5
    //override function

    function store(uint256 _newNumber) public override {
        myfavouriteNumber = _newNumber + 5;
    }
}
