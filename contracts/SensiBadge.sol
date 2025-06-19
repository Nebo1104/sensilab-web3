// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SensiBadge is ERC721URIStorage, Ownable {
    uint256 public tokenCount;

    constructor() ERC721("SensiBadge", "SBDG") {}

    function awardBadge(address to, string memory tokenURI) public onlyOwner returns (uint256) {
        tokenCount += 1;
        uint256 newItemId = tokenCount;
        _mint(to, newItemId);
        _setTokenURI(newItemId, tokenURI);
        return newItemId;
    }
}
