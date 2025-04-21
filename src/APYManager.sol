// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IStrategy} from "./interfaces/IStrategy.sol";
import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";

contract APYManager is Ownable {
    /// @notice List of all stategies contracts implement IStrategy
    /// @dev Used by the APYManager contract to evaluate and select the best yield strategy
    IStrategy[] public strategies;

    constructor() Ownable(msg.sender) {}

    /// @notice Add a new strategy contract to the list of available strategies
    /// @dev Only callable by the contract owner. The strategy must implement the IStrategy interface.
    /// @param _strategy The address of the strategy contract to add
    function addStrategy(IStrategy _strategy) external onlyOwner {
        strategies.push(_strategy);
    }
}