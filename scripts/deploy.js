async function main() {
    const [deployer] = await ethers.getSigners();  
    const StakingRewards = await ethers.getContractFactory("StakingRewards");
    const stakingRewards = await StakingRewards.deploy();
  
    console.log("stakingRewards address:", stakingRewards.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });
