# Full On Chain NFT

![image](https://user-images.githubusercontent.com/93658609/151540050-9daeb626-aae9-436d-b5be-9edbde0dfc62.png)

This is a contract that allows you to mint any SVG.

## Usage

### Deploy

```sh
git clone https://github.com/narvik-eth/full-on-chain-nft.git
cd full-on-chain-nft
# Specify your private key
cp .env.sample .env
yarn install
yarn hardhat run scripts/deploy.ts --network polygon
yarn hardhat verify --network polygon <deployed contract address>
```

### Mint

```sh
SVG_PATH="./image/profile.svg" yarn hardhat run scripts/mint.ts --network polygon
```

### Mint with polygonscan

![image](https://user-images.githubusercontent.com/93658609/151542589-3f7c7281-98dc-4d26-8b2e-255ac260c8d9.png)

| Netowrk        | URL                                                                                             |
| :------------- | :---------------------------------------------------------------------------------------------- |
| Polygon        | https://polygonscan.com/address/0xc01595d0119e72d04c05c95523f3a7b98c55f39f#writeContract        |
| Polygon Mumbai | https://mumbai.polygonscan.com/address/0x3a459b964338604d3b54bcd26e3fbc62225696c4#writeContract |
