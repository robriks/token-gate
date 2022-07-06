const hotsthotsAddresses = require("../config.js");
const hre = require("hardhat");

async function main() {
    // change first parameter here to read from other networks
    let address = hotsthotsAddresses.rinkeby
    let contract = await hre.ethers.getContractAt("HotsThots", address)
    let whitelisted = [];  
    for (i=0; i<6; i++) {
      let transaction = await contract.hotsFrens(i);
      whitelisted.push(transaction);
    }
    console.log(whitelisted)
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });