# Project Title : Bank Contract 

This Solidity program implements a bank contract by using various error handlers . It includes features such as setting sender and receiver balances, transferring funds, pay emi and bill Payment .

## Description

The Bank Contract is designed to provide basic banking functionalities. It includes the following features:

1. Set Sender and Receiver Balances: The contract provides the set_sender and set_receiver functions to set the balances of the sender and receiver accounts. These functions take the balance values as parameters and update the respective balances.

2. Transfer Funds: The contract includes the Transfer_Funds function, which allows for transferring funds from the sender to the receiver account. It checks if the transfer amount is less than the sender's balance using the require statement. If the condition is met, the transfer is executed by deducting the transfer amount from the sender's balance and adding it to the receiver's balance.

3. Pay EMI - The contract includes the Pay_EMI function , which  allows for paying an EMI amount. It uses the assert statement to verify that the EMI amount is less than the account balance. If the condition is true, the EMI amount is deducted from the account balance.

4. Pay Bill - The contract includes the Pay_Bill function that enables paying a bill amount. It uses the revert statement to check if the bill amount exceeds the account balance. If the condition is true, an error message is reverted, indicating insufficient balance for bill payment.


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., bankContract.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract bankContract {
    uint public sender_bal ;
    uint public receiver_bal ;

    function set_sender(uint _sender_bal) public {
        sender_bal = _sender_bal;
    }

    function set_receiver(uint _receiver_bal) public {
        receiver_bal = _receiver_bal;
    }
    
    // Require
    function Transfer_Funds(uint amount) public {
        require(amount < sender_bal,"Insufficient Balance... ");
        sender_bal -= amount ;
        receiver_bal += amount ;
 
    }

    uint public Acc_Bal = 5000 ;
    

    // Assert
    function Pay_EMI(uint emi_amount) public {
        assert(emi_amount<Acc_Bal);
        Acc_Bal -= emi_amount ;
        
    }

    // Revert
    function Pay_Bill(uint bill_amount) public {
        if(bill_amount>Acc_Bal){
            revert("Insufficient Balance for Bill Payment...");
        }
        Acc_Bal -= bill_amount ;
    }

}

```

Deploy the contract by compiling and deploying the Solidity code using a compatible development environment or Remix IDE.

Once the contract is deployed, you can interact with it by calling the provided functions.

Use the set_sender and set_receiver functions to set the balances of the sender and receiver accounts, respectively.

Call the Transfer_Funds function to transfer funds from the sender to the receiver account. Make sure the transfer amount is less than the sender's balance.

Use the Acc_Bal variable to check the overall account balance and perform operations on it.

Call the Pay_EMI function to pay an EMI amount, ensuring it is less than the account balance.

Call the Pay_Bill function to pay a bill amount, ensuring it does not exceed the account balance.

## Authors

Lakshay Sindhu 

Student at Chandigarh University

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
