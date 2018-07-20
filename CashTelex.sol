pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CashTelex is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CashTelex(address _owner)  UpgradeableToken(_owner) {
    name = "CashTelex";
    symbol = "TLX";
    totalSupply = 89800000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}