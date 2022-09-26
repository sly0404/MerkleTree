pragma solidity ^0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/MerkleTreeX.sol";

contract TestMerkleTree
{   
    MerkleTreeX private merkleTreeX = MerkleTreeX(DeployedAddresses.MerkleTreeX());
    string private errorWrongMerkleTreeRoot = "Transaction not valid !";
    string private errorValidMerkleTreeRoot = "Transaction should not be valid !";
    bytes32[] private array;
    bytes32[] private proofs;
    
    

    function testValidTransaction() public
    {
        string memory transaction = "Transaction 3";
        bytes32 hash_1 = 0x981672dae76b76aaa21abb38af581e352d1e5776d06c678f25a06a318973b52f;
        bytes32 hash_2 = 0x14e8fea86da5954e0dcad105cb4a1b5fa24c84ca676f1fdcbcfbfc12897264ec;
        proofs = [hash_1,hash_2];
        
        uint index = 2;
        Assert.isTrue(merkleTreeX.isValidTransaction(proofs,transaction,index), errorWrongMerkleTreeRoot);
    }

    function testUnvalidTransaction() public
    {
        string memory transaction = "Transaction 5";
        bytes32 hash_1 = 0x981672dae76b76aaa21abb38af581e352d1e5776d06c678f25a06a318973b52f;
        bytes32 hash_2 = 0x14e8fea86da5954e0dcad105cb4a1b5fa24c84ca676f1fdcbcfbfc12897264ec;
        proofs = [hash_1,hash_2];
        uint index = 2;
        Assert.isFalse(merkleTreeX.isValidTransaction(proofs,transaction,index), errorValidMerkleTreeRoot);
    }
}