// SPDX-License-Identifier: none
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Tag is Ownable {
    string person = "";

    function setPerson(string memory _value) public onlyOwner {
        person = _value;
    }
    function getPerson() public view returns (string memory) {
        return person;
    }


}