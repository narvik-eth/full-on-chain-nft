import { ethers } from 'hardhat';

const main = async () => {
  const FOC = await ethers.getContractFactory('FOC');
  const foc = await FOC.deploy();

  await foc.deployed();

  console.log('FOC deployed to:', foc.address);
};

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
