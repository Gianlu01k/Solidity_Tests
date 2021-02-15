// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Coin {

    address public minter;
    mapping (address => uint) public balances;
    //equivalente:
    //function balances(address _account) external view returns (uint) {
    //return balances[_account];}

    event Sent(address from, address to, uint amount);
//Call everytime smart contract is called
    constructor() {
        minter = msg.sender;
    }

// Sends an amount of newly created coins to an address
// Can only be called by the contract creator
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        require(amount < 1e60);
        balances[receiver] +=amount;
    }

    function send(address receiver, uint amount) public {
        require(amount <=balances[msg.sender], 'Insufficient balance.');
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}