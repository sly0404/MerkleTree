pragma solidity ^0.8.0;

//import "openzeppelin-solidity/contracts/utils/math/SafeMath.sol";

contract MerkleTree
{
   bytes32[] private hashesArray;

   constructor (string[] memory transactions) public
   {
      for(uint i = 0; i < transactions.length; i++) 
      {
            hashesArray.push(computeHash(transactions[i]));  
      }
      uint count = transactions.length;
      uint offset = 0;
      while (count > 0)
      {
         for(uint i = 0; i < count - 1; i+=2) 
         {
            bytes32 hashParent = keccak256(abi.encodePacked(hashesArray[offset + i], hashesArray[offset + i + 1]));
            hashesArray.push(hashParent);
         }
         offset += count;
         count = count / 2;
      }
   }

   function computeHash(string memory transaction) private pure returns(bytes32) 
   {
      return keccak256(abi.encodePacked(transaction));
   }

   function getHashesArray() external view returns (bytes32[] memory)
   {
      return hashesArray;
   }

   function getHashesArrayLength() external view returns (uint)
   {
      return hashesArray.length;
   }

   function getMerkleTreeRoot() private view returns (bytes32)
   {
      return hashesArray[hashesArray.length - 1];
   }

   function processProof(bytes32[] memory proofs, string memory leaf, uint index) private pure returns (bytes32) 
   {
      bytes32 computedRoot = computeHash(leaf);
      for (uint i = 0; i < proofs.length; i++)
      {
         bytes32 parentHash;
         if (index % 2 == 0)
            parentHash = keccak256(abi.encodePacked(computedRoot,proofs[i]));
         else
            parentHash = keccak256(abi.encodePacked(proofs[i],computedRoot));
         index = index / 2;
         computedRoot = parentHash;
      }
      return computedRoot;
   }

   function isValidTransaction(bytes32[] memory proofs, string memory leaf, uint index) external view returns (bool)
   {
      bytes32 computedRoot = processProof(proofs, leaf, index);
      return computedRoot == getMerkleTreeRoot();
   }
}