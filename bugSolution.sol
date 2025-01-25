```solidity
function withdraw(uint256 amount) public {
    require(balanceOf[msg.sender] >= amount, "Insufficient balance");
    balanceOf[msg.sender] -= amount;
    // Correctly transfer funds to the user's address using a safer method
    (bool success, ) = payable(msg.sender).call{value: amount}('');
    require(success, "Transfer failed.");
}
```