# Solidity Withdraw Function Bug
This repository demonstrates a common bug in Solidity smart contracts: a `withdraw` function that incorrectly subtracts funds from a user's balance without actually transferring the funds to their address.

## Bug Description
The `withdraw` function in `bug.sol` reduces the user's balance but omits the crucial step of sending the ETH to the user's address. This leads to the funds being trapped in the contract.

## Bug Solution
The `bugSolution.sol` file provides a corrected version of the function, incorporating the necessary funds transfer using `payable(msg.sender).transfer(amount);` or a safer alternative like `call` or a library.

## How to Reproduce
1. Compile `bug.sol`.
2. Deploy the contract.
3. Call the `withdraw` function.
4. Observe that the balance is correctly deducted but the funds are not sent back to the caller.