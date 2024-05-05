

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
contract BasicNft  is ERC721{

    uint256 public s_tokenCounter;
    constructor() ERC721("Dogie", "DOG"){
        s_tokenCounter = 0;
    }


    function mintNft()public  {
        
    }


    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";
}


}