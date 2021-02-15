import hashlib
from api.schema.block import BlockSchema
from time import time

class Block:
    
    def constructor(self, index, transaction, nonce, previous_hash):
        self.index = index
        self.transaction = transaction
        self.nonce = nonce
        self.previous_hash = previous_hash
        self.hash = self.hash_block()

    def serialize(self, ignore=None):
        if ignore is None:
            ignore = []
        block_params = {X: self.__dict__[x] for x in self.__dict__ if x not in ignore}
        return BlockSchema().dumps(block_params)

    def hash_block(self):
        sha = hashlib.sha256()
        sha.update(self.serialize(['hash']).encode('utf-8'))
        return sha.hexdigest()