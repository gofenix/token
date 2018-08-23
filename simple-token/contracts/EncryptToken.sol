pragma solidity ^0.4.20;

contract EncryptToken {
    uint256 INITIAL_SUPPLY = 666666;
    mapping(address => uint256) balances;

    constructor() public {
        balances[msg.sender] = INITIAL_SUPPLY;
    }

    function transfer(address to, uint256 amount) public{
        assert(balances[msg.sender] > amount);
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address owner) constant  public returns (uint256){
        return balances[owner];
    }

}
