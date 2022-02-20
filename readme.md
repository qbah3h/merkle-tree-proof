Array needs to be power of two (n^2)

Creates a cryptograhic proof that a transaction was included in a block. 

1- If there are many trnasactions that are waiting to be included in a block.

2- Construct a merke tree from these transactions.

3- Include the merkle root hash in to the block.

4- If i want to know if a transaction was included in the block, we need to:
    -get the hashes
    -compute the merkle root hash
    -compare with the merkle root hash that was commited to the block

Algorithmic complexity: log(n)

For a block with 1000 transactions it is needed only 10 hashes.

https://en.wikipedia.org/wiki/Merkle_tree

https://www.youtube.com/watch?v=n6nEPaE7KZ8