// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract MyContract {
    mapping(address => uint) public balances;
    address payable wallet;
    
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    
    function BuyToken() public payable{
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
    }
}
