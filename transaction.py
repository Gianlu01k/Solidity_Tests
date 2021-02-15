import time

class Transaction:

    def constructor(self, sender, data, amount):
        self.sender = sender
        self.timestamp = time.time()
        self.data = data
        self.amount = amount
    
    def validate(self):
        if self.amount<0:
            return False
        return True