//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "./Base64.sol";

contract FOC is ERC721("Full On Chain", "FOC") {
    uint256 public nextTokenId = 0;
    mapping(uint256 => string) public svg;

    function mint(string memory _svg) external {
        uint256 tokenId = nextTokenId;
        nextTokenId++;
        svg[tokenId] = _svg;
        _safeMint(_msgSender(), tokenId);
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");

        string memory data = svg[tokenId];
        bytes memory json = abi.encodePacked(
            '{"name": "FOC #',
            Strings.toString(tokenId),
            '", "description": "FOC is a full on-chain NFT that can inject arbitrary text data.", "image": "data:image/svg+xml;base64,',
            Base64.encode(bytes(data)),
            '"}'
        );
        return string(abi.encodePacked("data:application/json;base64,", Base64.encode(json)));
    }
}
