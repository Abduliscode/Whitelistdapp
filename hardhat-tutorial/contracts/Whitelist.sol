//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Whitelist {

    // maximun number of address tha can be whitelisted

    uint8 public maxWhitelistAddresses;

    // Keep trackof the number of addresses that hasbeen whitelisted till now

    uint8 public numAddressesWhitelisted;

    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxWhitelistAddresses) {
        maxWhitelistAddresses = _maxWhitelistAddresses;

    }

    function addAddressToWhitelist() public {

        require(!whitelistedAddresses[msg.sender], "Sender alreday in the whitelist);
        require(numAddressesWhitelisted < maxWhitelistAddresses, "Max limit reached");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
        
    }
}