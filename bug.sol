```solidity
function withdraw(uint256 amount) public {
    require(balanceOf[msg.sender] >= amount, "Insufficient balance");
    balanceOf[msg.sender] -= amount;
    // Missing transfer of funds to the user's address
    // payable(msg.sender).transfer(amount);
}
```