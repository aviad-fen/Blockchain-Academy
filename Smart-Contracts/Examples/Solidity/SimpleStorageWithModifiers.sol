pragma solidity ^0.5.0;

contract SimpleStorage {
    uint storedData;
    address public owner;
    
    modifier onlyOwner() { // Modifier
        require(
            msg.sender == owner,
            "Only seller can call this."
        );
        _;
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    function set(uint x) public onlyOwner {
        storedData = x;
    }
    
    function get() public view returns (uint) {
        return storedData;
    }
}