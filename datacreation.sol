pragma solidity >=0.5.0 <0.6.0;

import "./safemath.sol";

contract HealthDatabase {

    using SafeMath8 for uint8

    struct storage HealthData {
        uint personId;
        string name;
        uint8 age;
        string healthConditions;
    }

    HealthData[] public Database;

    mapping (uint => struct) public personIdToData;

    function inputData(uint personId, string _name, uint8 _age, string, _healthConditions) public {
        require(addressDataCount[msg.sender] == 0);
        uint personId = uint(keccak256(abi.encodePacked[msg.sender]));
        Database.push(HealthData(_name, _age, _healthConditions));
        addressDataCount[msg.sender]++;
        personIdToData.push(personId);
    }

}