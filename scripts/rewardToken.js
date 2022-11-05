const hre = require("hardhat");

async function main() {
  
  const RewardToken = await hre.ethers.getContractFactory("RewardToken");
  const rewardToken = await RewardToken.deploy(100000);
  await rewardToken.deployed();
  console.log(
    `RewardToken ADDRESS! `,rewardToken.address
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});


// 0x795889007ff7B36297F6607e3E627149b9106cD6 deployyed address


// contracts/rewardsToken.sol:RewardToken at 0x795889007ff7B36297F6607e3E627149b9106cD6
// for verification on the block explorer. Waiting for verification result...

// Successfully verified contract RewardToken on Etherscan.
// https://mumbai.polygonscan.com/address/0x795889007ff7B36297F6607e3E627149b9106cD6#code
