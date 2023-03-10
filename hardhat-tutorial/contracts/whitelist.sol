//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract whitelist 
{
    uint8 public maxWhitelistedAddresses;
    mapping(address=>bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses)
    {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public 
    {
        require(!whitelistedAddresses[msg.sender], "account is already whitelisted");
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "Limit reached");
        whitelistedAddresses[msg.sender]= true;
        numAddressesWhitelisted += 1;

    }




}