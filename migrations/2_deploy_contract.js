const MerkleTreeX = artifacts.require("MerkleTreeX");

const web3 = require("web3-utils");

module.exports = (deployer, network, [owner]) =>
{
  return deployer.then(() => deployer.deploy(MerkleTreeX))
                  .then(() => MerkleTreeX.deployed())

};
