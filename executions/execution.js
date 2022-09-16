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