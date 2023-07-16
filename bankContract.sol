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
