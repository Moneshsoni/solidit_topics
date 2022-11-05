const hre = require("hardhat");

async function main() {
  
  const StackingToken = await hre.ethers.getContractFactory("StackingToken");
  const stackingToken = await StackingToken.deploy(100000);
  await stackingToken.deployed();
  console.log(
    `RewardToken ADDRESS! `,stackingToken.address
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


// RewardToken ADDRESS!  0xFe1eC95D4bBBCF5ce4B9280c91eDD67bd8b442C0


// Successfully submitted source code for contract
// contracts/stackingToken.sol:StackingToken at 0xFe1eC95D4bBBCF5ce4B9280c91eDD67bd8b442C0
// for verification on the block explorer. Waiting for verification result...

// Successfully verified contract StackingToken on Etherscan.
// https://mumbai.polygonscan.com/address/0xFe1eC95D4bBBCF5ce4B9280c91eDD67bd8b442C0#code
