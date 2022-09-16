const MerkleTreeToken = artifacts.require("MerkleTreeToken");

const web3 = require("web3-utils");

module.exports = (deployer, network, [owner]) =>
{
  return deployer.then(() => deployer.deploy(MerkleTreeToken))
                  .then(() => MerkleTreeToken.deployed())

};
