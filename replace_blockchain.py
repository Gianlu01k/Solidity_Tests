def validate_chain(self, chain_to_validate):
    if chain_to_validate[0].hash_block() != self.chain[0].hash_block():
        return False
    
    for x in range(1, len(chain_to_validate)):
        if not self.validate_block(chain_to_validate[x], chain_to_validate[x-1]):
            return False
    return True

    def replace_chain(self, new_chain):
        if len(new_chain) <= len(self.chain):
            return False

        new_blocks = new_chain[len(self.chain):]
        for block in new_blocks:
            self.add_block(block)