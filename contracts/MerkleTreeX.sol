pragma solidity ^0.8.0;

import "./MerkleTree.sol";

contract MerkleTreeX is MerkleTree
{
   string[] public transactions = [
        "TX1: Scherlock -> John",
        "TX2: John -> Sherlock",
        "TX3: John -> Mary",
        "TX4: Mary -> Sherlock"
    ];

   constructor ()
   MerkleTree(transactions) public
   {
     
   }
}