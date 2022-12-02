pragma solidity ^0.8.0;

import "./MerkleTree.sol";

contract MerkleTreeX is MerkleTree
{
   string[] public transactions = [
        "Transaction 1",
        "Transaction 2",
        "Transaction 3",
        "Transaction 4"
    ];
    

   constructor ()
   MerkleTree(transactions) public
   {
     
   }
}