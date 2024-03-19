// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "erc721a/contracts/ERC721A.sol";

contract EchoCoin is ERC721A{

    // Maximum number of tokens that can be minted
    uint256 public maxQuantity = 5;

    constructor() ERC721A("EchoCoin", "ECTK") {}
    
    // Function to mint NFT which only owner can perform
    function mint(uint256 quantity) external payable {
        require(totalSupply() + quantity <= maxQuantity ,"You can not mint more than 5");
        _mint(msg.sender, quantity);
    }

    // Override the baseURI function to return the base URL for the NFTs
    function _baseURI() internal pure override returns (string memory){
        return "https://gateway.pinata.cloud/ipfs/QmYU1VFUaAFjrRzJ1RE2XBcXVwmzwkQHYHYpcvJDwFkeLj/";
    }

    // Return the URL for the prompt description
    function promptDescription() external pure returns (string memory) {
        return "create me 5 pictures of blackman";
    }
}
