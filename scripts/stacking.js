const hre = require("hardhat");

async function main() {

  const StakingRewards = await hre.ethers.getContractFactory("StakingRewards");
  const stakingRewards = await StakingRewards.deploy("0xFe1eC95D4bBBCF5ce4B9280c91eDD67bd8b442C0","0x795889007ff7B36297F6607e3E627149b9106cD6");

  await stakingRewards.deployed();

  console.log(
    `Staking contract address!`,stakingRewards.address
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


// // Staking contract address 0xe1ba7571ea99E193194da45Cc06A6Cd45523f879
// Successfully submitted source code for contract
// contracts/stacking.sol:StakingRewards at 0xe1ba7571ea99E193194da45Cc06A6Cd45523f879
// for verification on the block explorer. Waiting for verification result...

// Successfully verified contract StakingRewards on Etherscan.
// https://mumbai.polygonscan.com/address/0xe1ba7571ea99E193194da45Cc06A6Cd45523f879#code
