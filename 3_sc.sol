// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.9.0;



contract Sender{


    function send(address payable _to, uint amount) public payable{
        _to.transfer(amount);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}