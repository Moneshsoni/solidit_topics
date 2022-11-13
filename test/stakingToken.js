const { expect } = require("chai");

const {loadFixture} = require("@nomicfoundation/hardhat-network-helpers");
const { ethers } = require("hardhat");

describe("Staking Token contract", function () {

  async function deployTokenFixture(){
    const StakingToken  = await ethers.getContractFactory("StackingToken");
    
    const  [owner,add1,add2] = await ethers.getSigners();
    
    const stakingToken = await StakingToken.deploy(10000);
    
    await stakingToken.deployed();
    
    return {StakingToken, StakingToken,owner,add1,add2}
  }

  it("Check contract console",async function (){
    const {stakinngToken, owner} = await loadFixture(deployTokenFixture);
    const ownerBalance = await stakinngToken.balanceOf(owner.address);
    console.log(">>>>>>",ownerBalance);
  })



  // it("Deployment should assign the total supply of tokens to the owner", async function () {
  //   const [owner] = await ethers.getSigners();

  //   const StackingToken = await ethers.getContractFactory("StackingToken");

  //   const stackingToken = await StackingToken.deploy(100000);

  //   const ownerBalance = await stackingToken.balanceOf(owner.address);
  //   expect(await stackingToken.totalSupply()).to.equal(ownerBalance);
    
  //   console.log(">>>>",StackingToken);
  // });
});

