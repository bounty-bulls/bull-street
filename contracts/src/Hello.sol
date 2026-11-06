// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Ownable, Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @notice Throwaway spike to prove Arc Studio can build and deploy this repo (P0.4).
contract Hello is Ownable2Step {
    string public greeting;

    event GreetingSet(string greeting);

    constructor(address owner_, string memory greeting_) Ownable(owner_) {
        greeting = greeting_;
    }

    function setGreeting(string calldata greeting_) external onlyOwner {
        greeting = greeting_;
        emit GreetingSet(greeting_);
    }
}
