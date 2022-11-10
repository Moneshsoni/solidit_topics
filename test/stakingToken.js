const { expect } = require("chai");

describe("Token contract", function () {
  it("Deployment should assign the total supply of tokens to the owner", async function () {
    const [owner] = await ethers.getSigners();

    const StackingToken = await ethers.getContractFactory("StackingToken");

    const stackingToken = await StackingToken.deploy(100000);

    const ownerBalance = await stackingToken.balanceOf(owner.address);
    expect(await stackingToken.totalSupply()).to.equal(ownerBalance);
    
    console.log(">>>>",StackingToken);
  });
});
