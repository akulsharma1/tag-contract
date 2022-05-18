// SPDX-License-Identifier: none
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Tag is Ownable {

    // event NewTaggedPerson(string name, string tagTime);
    struct tagPerson {
        string name;
        string tagTime;
        string taggedByWho;
    }
    tagPerson[] private tagList;

    function createPerson(string memory _name, string memory _tagTime) public onlyOwner {
        if(tagList.length > 0) {
            tagList.push(tagPerson(_name, _tagTime, tagList[tagList.length-1].name));
        } else {
            tagList.push(tagPerson(_name, _tagTime, "first"));
        }
        
    }

    function getPerson() public view returns (string memory) {
        return tagList[tagList.length-1].name;
    }

}