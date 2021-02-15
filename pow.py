@staticmethod
def validate_pow(last_nonce, last_hash, nonce):
    sha = hashlib.sha256(f'{last_nonce}{last_hash}{nonce}'.encode())
    return sha.hexdigest()[:4] == '0000'

def generate_pow(self, block):
    last_nonce = block.nonce
    last_hash = block.hash
    nonce = 0
    while not self.validate_pow(last_nonce, last_hash, nonce):
        nonce += 1
    return nonce