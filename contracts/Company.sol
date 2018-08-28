pragma solidity ^0.4.23;

contract Company {
    address public owner;
    mapping(address => Review) reviews;
    struct Review{
        string message;
        uint rate;
    }
    
    function addReview( string review, uint rate) payable{
        reviews[msg.sender].message =review;
        reviews[msg.sender].rate =rate;
    }
}
