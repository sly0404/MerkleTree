pragma solidity ^0.8.0;

//import "openzeppelin-solidity/contracts/utils/math/SafeMath.sol";

contract MerkleTreeToken
{
    struct MerkleTree 
    {
        string data;
        bytes32 hashData;
    } 
    MerkleTree public merkleTree;

    constructor () public
    {
        string memory data = "test 1";
        bytes32 hashData = keccak256("test 1");
        merkleTree = MerkleTree(data,hashData);
    }

    function getData() external view returns (string memory) 
    {
       return merkleTree.data;
    }
    
    function getHashData() external view returns (bytes32)
    {
       return merkleTree.hashData;
    }

    function concatHashes(string memory a, string memory b) external pure returns (bytes32)
    {
       bytes memory concatHashes = abi.encodePacked(a,b); 
       return keccak256(concatHashes);
    }

    function hash(string memory a) external pure returns (bytes32)
    {
       bytes memory concatHashes = abi.encodePacked(a); 
       return keccak256(concatHashes);
    }



    function processProof(string[] memory proofs, string memory leaf) external pure returns (bytes32) 
    {
       bytes32 computedRoot = bytes32(bytes(leaf));
       for (uint256 i = 0; i < proofs.length; i++)
       {
            bytes memory concat = abi.encodePacked(proofs[i],computedRoot);
            computedRoot = keccak256(concat);
       }
       return computedRoot;
    }
}