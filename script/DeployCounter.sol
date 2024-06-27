// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";

import {Counter} from "../src/Counter.sol";

contract DeployCounter is Script {
    function run() external returns (Counter counter) {
        vm.startBroadcast();
        counter = new Counter( /*{ value: 1 ether }*/ );
        vm.stopBroadcast();
        return counter;
    }
}
