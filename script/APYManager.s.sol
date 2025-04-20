// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {APYManager} from "../src/APYManager.sol";

contract APYManagerScript is Script {
    APYManager public aPYManager;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        aPYManager = new APYManager();
        vm.stopBroadcast();
    }
}
