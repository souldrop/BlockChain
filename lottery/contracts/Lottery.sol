pragma solidity ^0.4.17;

contract Lottery {
    address public manager;
    address[] public players;

    function Lottery() public {
        manager = msg.sender;
    }

    function enter() public payable {
        require(msg.value >= 0.0001 ether, "You must enter the lottery with at least 0.0001 ether");
        players.push(msg.sender);
    }

}