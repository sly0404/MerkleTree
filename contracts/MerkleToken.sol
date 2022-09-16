pragma solidity ^0.8.0;

//import "openzeppelin-solidity/contracts/utils/cryptography/MerkleProof.sol";

contract MerkleToken
{
    string public constant TOKEN_NAME = "MerkleToken";
    string public constant TOKEN_SYMBOL = "MTKN";
    uint256 public constant TOTAL_TOKENS = 10000;
    uint256[] public balanceArray = [1, 2, 5];

    constructor () public
    {
      
    }

    function getLastInteger(uint256[] memory balance) internal view returns (uint256)
    {
        uint256 balanceLength = balance.length;
        return balance[balanceLength-1];
    }
    
    function getLast() external view returns (uint256)
    {
        return getLastInteger(balanceArray);
    }
}