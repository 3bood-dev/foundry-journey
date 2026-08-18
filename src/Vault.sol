//SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract Vault {
     mapping(address => uint256) private balances;

    function deposit() external payable {
        require(msg.value > 0, "Send some ETH");
        balances[msg.sender] += msg.value;
    }
}