//SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@rari-capital/solmate/src/tokens/ERC721.sol";
import "@rari-capital/solmate/src/auth/Owned.sol";

contract HotsThots is ERC721("HotsThots", "HOTS"), Owned(msg.sender) {
    address[] public hotsFrens;

    constructor(address[] memory _whitelist) {
        console.log("Deploying HotsThots membership NFT to whitelisted addresses");
        setOwner(msg.sender);
        hotsFrens = _whitelist;
    }

    function addFren(address[] memory _newFrens) public /*onlyOwner()*/ {
        //hotsFrens.push(_newFrens);
        //TODO
    }

    function tokenURI(uint256 id) public view override returns (string memory) {
        return "hello";
        //TODO W/ ARWEAVE
    }

    function mint() public override {
        // require(msg.sender to be on whitelist);
        // TODO 
    }
}
