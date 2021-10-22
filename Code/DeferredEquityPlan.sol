pragma solidity ^0.5.0;

// lvl 3: equity plan
contract DeferredEquityPlan {
    // uint fakenow = now; // To test timelock functionality, change all instances of `now` to `fakenow`
    
    address human_resources;

    address payable employee;
    bool active = true; // This employee is active at the start of the contract

    uint total_shares = 1000;
    uint annual_distribution = 250; // 1000 total_shares over 4 years

    uint start_time = now; // Permanently store the time this contract was initialized

    uint unlock_time = now + 365; // Will increment every year

    uint public distributed_shares; // Starts at 0

    constructor(address payable _employee) public {
        human_resources = msg.sender;
        employee = _employee;
    }

    function distribute() public {
        require(msg.sender == human_resources || msg.sender == employee, "You are not authorized to execute this contract.");
        require(active == true, "Contract not active.");
        require(unlock_time <= now, "Shares have not been vested yet!"); // "require" to enforce `unlock_time` is less than or equal to `now`
        require(distributed_shares < total_shares, "All shares have been distributed."); // "require" `distributed_shares` is less than the `total_shares`

        unlock_time += 365 days; // Locks distribution for another year
        distributed_shares = (now - start_time) / 365 days * annual_distribution; // Calculate the shares distributed
        
        if (distributed_shares > 1000) { // Double check in case the employee does not cash out until after 5+ years
            distributed_shares = 1000;
        }
    }
    
    // function fastforward() public { // Test timelock functionality with `fastforward` function
    //     fakenow += 100 days;
    // }

    // function fastforward4y() public { // Skipping 4 years (1460 days, leap day excluded)
    //     fakenow += 1460 days;
    // }
    
    function deactivate() public { // `human_resources` and the `employee` can deactivate this contract at-will
        require(msg.sender == human_resources || msg.sender == employee, "You are not authorized to deactivate this contract.");
        active = false;
    }

    function activate() public { // Function to reactivate contract
        require(msg.sender == human_resources || msg.sender == employee, "You are not authorized to reactivate this contract.");
        active = true;
    }

    function() external payable { // Since we do not need to handle Ether in this contract, revert any Ether sent to the contract directly
        revert("Do not send Ether to this contract!");
    }
}

// no leap days were harmed in the making of this contract