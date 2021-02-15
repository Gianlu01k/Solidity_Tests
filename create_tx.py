def create_tx(self, sender, data, amount):
    transaction = Transaction(sender, data, amount)

    if transaction.validate():
        self.current_txs.append(transaction)
        return transaction, True
    return None, False
