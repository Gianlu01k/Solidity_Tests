def constructor(self):
    self.current_txs = []
    self.chain = []
    self.create_genesis()

def create_genesis(self):
    genesis_block = Block(0, self.current_txs, 0 , '00')
    self.chain.append(genesis_block)