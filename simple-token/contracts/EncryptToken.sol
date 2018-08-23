pragma solidity ^0.4.20;

contract EncryptToken {
    uint256 INITIAL_SUPPLY = 666666;
    mapping(address => uint256) balances;

    function EncryptToken(){
        balances[msg.sender] = INITIAL_SUPPLY;
    }

    function transfer(address to, uint256 amount){
        assert(balances[msg.sender] > amount);
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address owner) constant returns (uint256){
        return balances[owner];
    }

}
