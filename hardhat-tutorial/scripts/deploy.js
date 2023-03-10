const { ethers } = require("hardhat");

async function main () 
{

  const whitelistContract = await ethers.getContractFactory("whitelist");

  const deployWhitelistContract = await whitelistContract.deploy(10);

  await deployWhitelistContract.deployed();

  console.log("Whitelist contract deployed at : " , deployWhitelistContract.address);

}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });



