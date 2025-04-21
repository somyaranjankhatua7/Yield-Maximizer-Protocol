// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title IStrategy Interface
/// @notice Define the standard interface for yield strategies
interface IStrategy {
    /// @notice Deposit token into strategy
    /// @param _token the address of the token user wants to deposit
    /// @param _amount the amount to deposit
    function deposit(address _token, uint256 _amount) external;

    /// @notice Withdraw token from strategy
    /// @param _token the address of the token user wants to withdraw
    /// @param _amount the amount user wants to withdraw
    function withdraw(address _token, uint256 _amount) external;

    /// @notice Returns the current APY offered by the strategy in basis points (1% = 100)
    function getAPY() external view returns (uint256);
}
