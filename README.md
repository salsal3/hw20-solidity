# Unit 20 - "Looks like we've made our First Contract!"

![contract](Images/smart-contract.png)

## Background

Your new startup has created its own Ethereum-compatible blockchain to help connect financial institutions, and the team wants to build smart contracts to automate some company finances to make everyone's lives easier, increase transparency, and to make accounting and auditing practically automatic!

Fortunately, you've been learning how to program smart contracts with Solidity! What you will be doing this assignment is creating 3 `ProfitSplitter` contracts. These contracts will do several things:

* Pay your Associate-level employees quickly and easily.

* Distribute profits to different tiers of employees.

* Distribute company shares for employees in a "deferred equity incentive plan" automatically.

## Files

* [`AssociateProfitSplitter.sol`](Starter-Code/AssociateProfitSplitter.sol) -- Level 1 starter code.

* [`TieredProfitSplitter.sol`](Starter-Code/TieredProfitSplitter.sol) -- Level 2 starter code.

* [`DeferredEquityPlan.sol`](Starter-Code/DeferredEquityPlan.sol) -- Level 3 starter code.

## Instructions

This assignment has three levels of difficulty, with each contract increasing in complexity and capability. Although it is highly recommended you complete all three contracts, you are only required to solve one of the three contracts. Recommended to start with Level 1, then move forward as you complete the challenges. You can build all three with the skills you already have!

* **Level One** is an `AssociateProfitSplitter` contract. This will accept Ether into the contract and divide the Ether evenly among the associate level employees. This will allow the Human Resources department to pay employees quickly and efficiently.

* **Level Two** is a `TieredProfitSplitter` that will distribute different percentages of incoming Ether to employees at different tiers/levels. For example, the CEO gets paid 60%, CTO 25%, and Bob gets 15%.

* **Level Three** is a `DeferredEquityPlan` that models traditional company stock plans. This contract will automatically manage 1000 shares with an annual distribution of 250 over 4 years for a single employee.


## Associated Profit Splitter
This contract divides Ether profits evenly among three associate-level employees. Any Ether remaining after the split is sent back to HR.







### Submission

Create a `README.md` that explains how each of the contracts work and what the motivation for each of the contracts is. Also, please provide screenshots to illustrate the functionality (e.g. how you send transactions, how the transferred amount is then distributed by each of the contracts, and how the timelock functionality can be tested with the `fastforward` function). Alternatively, you can also record your interactions with the contract as a gif (e.g. https://www.screentogif.com/)


Upload the `README.md` to a Github repository and provide the testnet address for others to interact with the contract.

---
### Requirements

<details>
<summary>Option 1</summary>

#### Contract Setup  (35 points)

##### To receive all points, your code must:

* Define all public variables using the assigned criteria. (8 points)
* Create a constructor function that accepts `address payable _one`. (9 points)
* Create a constructor function that accepts `address payable _two`. (9 points)
* Create a constructor function that accepts `address payable _three`. (9 points)

#### Contract Functionality  (35 points)

##### To receive all points, your code must:

* Create the `balance` function using the assigned criteria. (9 points)
* Create the `deposit` function using the assigned criteria. (9 points)
* Create the `fallback` function using the assigned criteria. (9 points)
* Test the contracts tested and add screenshots to your ReadMe.md. (8 points)

#### Coding Conventions and Formatting (10 points)

##### To receive all points, your code must:

* Place imports at the beginning of the file, just after any module comments and docstrings and before module globals and constants. (3 points)
* Name functions and variables with lowercase characters and with words separated by underscores. (2 points)
* Follow Don't Repeat Yourself (DRY) principles by creating maintainable and reusable code. (3 points)
* Use concise logic and creative engineering where possible. (2 points)

#### Deployment and Submission (10 points)

##### To receive all points, you must:

* Submit a link to a GitHub repository that’s cloned to your local machine and contains your files. (5 points)
* Include appropriate commit messages in your files. (5 points)

#### Code Comments (10 points)

##### To receive all points, your code must:

* Be well commented with concise, relevant notes that other developers can understand. (10 points)

</details>

<details>
<summary>Option 2</summary>

#### Contract Setup  (35 points)

##### To receive all points, your code must:

* Set Human Resources to the constructor as `msg.sender`. (8 points)
* Create the employee initialization variables. (9 points)
* Define `uint start_time` and `uint public distributed_shares` to assigned criteria. (9 points)
* Create the `distribute` function using the defined criteria. (9 points)

#### Contract Functionality  (35 points)

##### To receive all points, your code must:

* Contract deployed locally, screenshots provided. (10 points)
* Contract tested with fakenow testing logic. (10 points)
* Contract deployed to a live Testnet, screenshots provided. (15 points)

#### Coding Conventions and Formatting (10 points)

##### To receive all points, your code must:

* Place imports at the beginning of the file, just after any module comments and docstrings and before module globals and constants. (3 points)
* Name functions and variables with lowercase characters and with words separated by underscores. (2 points)
* Follow Don't Repeat Yourself (DRY) principles by creating maintainable and reusable code. (3 points)
* Use concise logic and creative engineering where possible. (2 points)

#### Deployment and Submission (10 points)

##### To receive all points, you must:

* Submit a link to a GitHub repository that’s cloned to your local machine and contains your files. (5 points)
* Include appropriate commit messages in your files. (5 points)

#### Code Comments (10 points)

##### To receive all points, your code must:

* Be well commented with concise, relevant notes that other developers can understand. (10 points)

</details>
<details>
<summary>Option 3</summary>

#### Contract Setup  (35 points)

##### To receive all points, your code must:

* Calculate the number of points by dividing `msg.value`. (8 points)
* Set the `uint amount` to the points for each employee. (9 points)
* Add the `amount` to the total, then use it to calculate the `msg.value` distribution. (9 points)
* Transfer the `amount` to each employee, then set `amount` equal to the points and multiply it by the given percentage. (9 points)

#### Contract Functionality  (35 points)

##### To receive all points, your code must:

* Send the `remainder` to the employee with highest percentage. (10 points)
* Deploy the contract. (10 points)
* Test the contract and add corresponding screenshots to the ReadME.md. (15 points)

#### Coding Conventions and Formatting (10 points)

##### To receive all points, your code must:

* Place imports at the beginning of the file, just after any module comments and docstrings and before module globals and constants. (3 points)
* Name functions and variables with lowercase characters and with words separated by underscores. (2 points)
* Follow Don't Repeat Yourself (DRY) principles by creating maintainable and reusable code. (3 points)
* Use concise logic and creative engineering where possible. (2 points)

#### Deployment and Submission (10 points)

##### To receive all points, you must:

* Submit a link to a GitHub repository that’s cloned to your local machine and contains your files. (5 points)
* Include appropriate commit messages in your files. (5 points)

#### Code Comments (10 points)

##### To receive all points, your code must:

* Be well commented with concise, relevant notes that other developers can understand. (10 points)

</details>

---

© 2021 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
