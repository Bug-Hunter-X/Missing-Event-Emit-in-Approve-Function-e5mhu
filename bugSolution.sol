```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Not enough balance");
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}

function approve(address spender, uint amount) public {
  allowance[msg.sender][spender] = amount;
  emit Approval(msg.sender, spender, amount); // corrected: added emit event
}
```