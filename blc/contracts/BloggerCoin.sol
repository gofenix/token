  pragma solidity ^0.4.24;
  import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

  contract BloggerCoin is StandardToken{
      string public name = "BloggerCoin";  // 名字
      string public symbol = "BLC";   // 简称
      uint8 public decimals = 4;   // 10的4次方
      uint256 public INITIAL_SUPPLY = 666666;

      constructor() public{
          totalSupply_ = INITIAL_SUPPLY;
          balances[msg.sender] = INITIAL_SUPPLY;
      }
  }