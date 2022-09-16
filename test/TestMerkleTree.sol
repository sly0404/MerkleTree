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
        string memory transaction = "TX3: John -> Mary";
        bytes32 hash_1 = 0x69a40d72d1258df801a7ae1e36dd586717a112334f8d9ca4664a339168874ef5;
        bytes32 hash_2 = 0x83d2dbc9a1246936e38d7f1d4de7709616ac8c32e5159f4a79b5587800249d24;
        proofs = [hash_1,hash_2];
        
        uint index = 2;
        Assert.isTrue(merkleTreeX.isValidTransaction(proofs,transaction,index), errorWrongMerkleTreeRoot);
    }

    function testUnvalidTransaction() public
    {
        string memory transaction = "TX3: John -> Maryx";
        bytes32 hash_1 = 0x69a40d72d1258df801a7ae1e36dd586717a112334f8d9ca4664a339168874ef5;
        bytes32 hash_2 = 0x83d2dbc9a1246936e38d7f1d4de7709616ac8c32e5159f4a79b5587800249d24;
        proofs = [hash_1,hash_2];
        uint index = 2;
        Assert.isFalse(merkleTreeX.isValidTransaction(proofs,transaction,index), errorValidMerkleTreeRoot);
    }
}