def mine(self, reward_address):
    last_block = self.last_block
    index = last_block.index + 1
    previous_hash = last_block.hash

    nonce = self.generate_pow(last_block)
    self.create_tx(
        sender = "0",
        data = reward_address,
        amount = 1
    )

    block = Block(index, self.current_txs, nonce, previous_hash)

    if self.add_block(block):
        return block
    return None