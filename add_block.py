def add_block(self, block):
    if self.validate_block(block, self.last_block):
        self.chain.append(block)
        self.current_txs = []
        return True
    return False

def validate_block(self, current_block, previous_hash):
    if current_block.index != previous_hash.index + 1:
        return False
    
    if current_block.previous_hash != previous_hash.hash:
        return False

    if current_block.hash != current_block.hash_block():
        return False

    if not self.validate_pow(previous_block.nonce, previous_block.hash, current_block.nonce):
        return False
        
    return True
