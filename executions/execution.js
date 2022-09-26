token = await MerkleToken.deployed()
token = await MerkleTreeToken.deployed()

token.getLast()
token.getData()
token.getHashData()

token.hash("a") -> '0x3ac225168df54212a25c1c01fd35bebfea408fdac2e31ddd6f80a4bbf9a5f1cb'
token.hash("b") -> '0xb5553de315e0edf504d9150af82dafa5c4667fa618ed0a6f19c69b41166c5510'
token.hash("c") -> '0x0b42b6393c1f53060fe3ddbfcd7aadcca894465a5a438f69c87d790b2299b9b2'
token.hash("d") -> '0xf1918e8562236eb17adc8502332f4c9c82bc14e19bfc0aa10ab674ff75b3d2f3'
token.concatHashes('0x3ac225168df54212a25c1c01fd35bebfea408fdac2e31ddd6f80a4bbf9a5f1cb','0xb5553de315e0edf504d9150af82dafa5c4667fa618ed0a6f19c69b41166c5510')
 -> '0x5f532725975999c811ae13be41fb93a2dc961d792aabec5b07b1d961cddfded2'
 token.concatHashes('0x0b42b6393c1f53060fe3ddbfcd7aadcca894465a5a438f69c87d790b2299b9b2','0xf1918e8562236eb17adc8502332f4c9c82bc14e19bfc0aa10ab674ff75b3d2f3')
 -> '0xf2812278c73bfe791ea412701acc1697b7b14d4b50fed8c1ba7aa600d781118a'
 token.concatHashes('0x5f532725975999c811ae13be41fb93a2dc961d792aabec5b07b1d961cddfded2','0xf2812278c73bfe791ea412701acc1697b7b14d4b50fed8c1ba7aa600d781118a') 
 -> '0xec5859a8693913943977a3f54b3b4a8ff95f8a69e7f299642bb4340f20ef2245'
 token.hash("d")


 token.processProof(['0x3ac225168df54212a25c1c01fd35bebfea408fdac2e31ddd6f80a4bbf9a5f1cb','0xf2812278c73bfe791ea412701acc1697b7b14d4b50fed8c1ba7aa600d781118a'], '0xb5553de315e0edf504d9150af82dafa5c4667fa618ed0a6f19c69b41166c5510')






 token = await MerkleTreeX.deployed()

 transactions = [
    "TX1: Scherlock -> John",
    "TX2: John -> Sherlock",
    "TX3: John -> Mary",
    "TX4: Mary -> Sherlock"
];

 token.getHashesArray()
  -> [                                                                       
    '0xb2e3a2f0bfd05a4493c96ab84bc9b592ebfab43a7a7c95b5b2f2ff20e139f389', 
    '0xae9162f02511c27b7eb32b9756af10968925d048b8d3fca928d5712da1ebc5b8', 
    '0x67ad9362673b920a987d060e93230eac77a89b8f42f5ffdb9b4948e676f36349', 
    '0x69a40d72d1258df801a7ae1e36dd586717a112334f8d9ca4664a339168874ef5', 
    '0x83d2dbc9a1246936e38d7f1d4de7709616ac8c32e5159f4a79b5587800249d24', 
    '0xdf0a693db97e6d4043455ce841471e0f5782813729e4c1334d086ef9c7342a8c', 
    '0x4aebbc948c21be9df7ac8d63e2f1c6d9a58998d4edfba9b192a6f8d4d7d07958'  
  ]  
  ['0x69a40d72d1258df801a7ae1e36dd586717a112334f8d9ca4664a339168874ef5','0x83d2dbc9a1246936e38d7f1d4de7709616ac8c32e5159f4a79b5587800249d24']                                                                       
 token.processProof(['0x69a40d72d1258df801a7ae1e36dd586717a112334f8d9ca4664a339168874ef5','0x83d2dbc9a1246936e38d7f1d4de7709616ac8c32e5159f4a79b5587800249d24'],"TX3: John -> Mary",2)
 token.isValidTransaction(['0x69a40d72d1258df801a7ae1e36dd586717a112334f8d9ca4664a339168874ef5','0x83d2dbc9a1246936e38d7f1d4de7709616ac8c32e5159f4a79b5587800249d24'],"TX3: John -> Mary",2)




 token = await MerkleTreeX.deployed()
 transactions = [
  "Transaction 1",
  "Transaction 2",
  "Transaction 3",
  "Transaction 4"
];

token.getHashesArray()
-> 
[
  '0x288be0d128e3400b2eb93a495532830b851937311390b747ac9edc6e073fc0a1',
  '0x8472cf808923d4b3686e1a6007e11a4558690c55b1b0721e67d77d10302e9583',
  '0x10df40cc6c596a81db3c5e640ab95f9781cc91df7a4f47af9dca6607b6c585bd',
  '0x981672dae76b76aaa21abb38af581e352d1e5776d06c678f25a06a318973b52f',
  '0x14e8fea86da5954e0dcad105cb4a1b5fa24c84ca676f1fdcbcfbfc12897264ec',
  '0x08b1fc2cf1562a229b24da04106e93f097f80d9139e4577c8e86375bc0c1dcd1',
  '0x790b4a1412fdcd863d08ecd1465da593b65b249f9a10ddd7c3bd8e8d2d38c11b'
]



