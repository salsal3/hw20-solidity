# Unit 20 - "Looks like we've made our First Contract!"

![contract](Images/smart-contract.png)

---

## Lv1: Associate Profit Splitter
*[`AssociateProfitSplitter.sol`](Code/AssociateProfitSplitter.sol) -- Level 1 starter code.*

This contract facilitates the payment of employee wages in a fast and efficient manner. Ether profits are evenly distributed among three associate-level employees. Any Ether remaining after the split is sent back to HR. The program is built in Solidity, and transactions are sent using Remix and MetaMask.
![contract](Screenshots/lv1-ss1.png)

After building the contract in Remix, it is compiled under version `0.5.0` and deployed with three account addresses added. These addresses are generated from Ganache.
![start_balances](Screenshots/lv1-ss2.png)

The box labeled "Value" is kept at `0` when first deploying the contract, and it is then filled with the amount to be divided among the accounts (in this case `10 ether`). The "deposit" button under "Deployed Contracts" will run the transaction. 
![transaction](Screenshots/lv1-ss3.png)

A prompt from MetaMask will ask to confirm the transaction, and a pop up will show that the transaction is successful.
![confirm](Screenshots/lv1-ss4.png)
![success](Screenshots/lv1-ss5.png)

Once it is run, the designated amount (plus gas fees) is removed from the primary account and distributed 
![new_balances](Screenshots/lv1-ss6.png)

---

## Lv2 Tiered Splitter
*[`TieredProfitSplitter.sol`](Code/TieredProfitSplitter.sol) -- Level 2 starter code.*

This contract, much like the Associate Profit Splitter, distributes profits among three employees. These employees rank differently within the company, therefore their compensation is broken up into different percentages rather than split evenly three ways.

The contract is built similar to first, though this time the value is divided by 100 in order to create simple percentage-based calculations. The CEO is compensated 60%, the CTO 25%, and Bob gets 15%; any remainder returns to HR.
![contract](Screenshots/lv2-ss1.png)

The three employees have a starting balance 100 ether in each of their accounts.
![start_balances](Screenshots/lv2-ss2.png)
![start_balances](Screenshots/lv2-ss3.png)

Once compiled and deployed, the contract appears in the "Deployed Contracts" section at the bottom of the menu. After a value is set, a deposit can be made.
![transaction](Screenshots/lv2-ss4.png)

As illustrated below, out of the 10 ether, the CEO received 6 (60%), the CTO received 2.5 (25%), and Bob received 1.5 (15%).
![new_balances](Screenshots/lv2-ss5.png)
![new_balances](Screenshots/lv2-ss6.png)

---

##Lv3 Deferred Equity Plan
* [`DeferredEquityPlan.sol`](Code/DeferredEquityPlan.sol) -- Level 3 starter code.