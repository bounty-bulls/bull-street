// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Hello} from "../src/Hello.sol";

contract HelloTest is Test {
    Hello internal hello;
    address internal owner = makeAddr("owner");

    function setUp() public {
        hello = new Hello(owner, "gm");
    }

    function test_ownerCanSetGreeting() public {
        vm.prank(owner);
        hello.setGreeting("gm arc");
        assertEq(hello.greeting(), "gm arc");
    }

    function test_revertWhen_notOwner() public {
        vm.expectRevert(abi.encodeWithSelector(Ownable.OwnableUnauthorizedAccount.selector, address(this)));
        hello.setGreeting("nope");
    }
}
