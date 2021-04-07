pragma solidity ^0.4.0;
// Creating a simple transaction contract to check who sends ether and amount sent
contract Transaction {
    event senderLogger(address);
    // Check who sends the transaction to the contract address
    event ValueLogger(uint);
    // check the value wei/ether sent to the contract address
    address private chris;
    // Creating an onwer of the smart contract and modify the contract to onwership acccess write
    modifier Chris{
        require(chris == msg.sender);
        _;
    }
    // modify the contract address to chris(owner)


    modifier validValue {
        require(msg.value >= 1 ether)
    }
    function Transaction() {
        chris = msg.sender;
    // Transaction should only be called once by yourself   / 
    }
    function () payable {
    // paybale means address can recieve ethereum
    senderLogger(msg.sender);
    ValueLogger(msg.value);
    }
}

contract Transaction {
    event SenderLogger(address);
    event ValueLogger(uint);
    address private chris;

    modifier chris {
        require(chris == msg.sender);
        _;

     modifier validValue{
         require(msg.value >= 1 ether);
         _;
     }   
     function Transaction() {
         chris = msg.sender;
     }
    }
    function () payable is chris validValue {
        SenderLogger(msg.sender);
        ValueLogger(msg.value);
    }
}

















