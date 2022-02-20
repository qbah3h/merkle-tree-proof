pragma solidity ^0.8.0;

contract MerkleProof {
    function verify(bytes32[] memory _proof, bytes32 _root, bytes32 _leaf, uint _index) public pure returns (bool) {
        bytes32 hash = _leaf;
        for (uint i = 0; i < _proof.length; i++) {
            if (_index % 2 == 0) {
                hash = keccak256(abi.encodePacked(hash, _proof[i]));
            } else {
                hash = keccak256(abi.encodePacked(_proof[i], hash));
            }
            _index = _index/2;
        }
        return hash == _root;
    }
}