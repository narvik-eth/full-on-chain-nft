import { readFileSync } from 'fs';
import { ethers } from 'hardhat';
import { FOC__factory } from '../typechain-types';

const main = async () => {
  const signers = await ethers.getSigners();
  const signer = signers[0];

  const contract = FOC__factory.connect(
    process.env.FOC_ADDRESS as string,
    signer
  );

  const blob = readFileSync('./images/profile.svg', 'utf-8');
  const tx = await contract.mint(blob);
  console.log('tx: ', tx.hash);
  await tx.wait();
};

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
