// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {APYManager} from "../src/APYManager.sol";

contract APYManagerTest is Test {
    APYManager public aPYManager;

    function setUp() public {
        aPYManager = new APYManager();
    }
}