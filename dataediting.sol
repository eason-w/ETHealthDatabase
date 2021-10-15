pragma solidity >=0.5.0 <0.6.0;

import "./safemath.sol";

contract DataEditing {

    function editName(uint _personId, string calldata _newName) external {
        require(uint(keccak256(abi.encodePacked[msg.sender])) == personId);
        Database[_personId].name = _newName;
    }

    function editAge(uint _personId, uint8 calldata _newAge) external {
        require(uint(keccak256(abi.encodePacked[msg.sender])) == personId);
        Database[_personId].age = _newAge;
    }

    function editHealthConditions(uint _personId, string calldata _newHealthConditions) external {
        require(uint(keccak256(abi.encodePacked[msg.sender])) == personId);
        Database[_personId].healthConditions = _newHealthConditions;
    }

}