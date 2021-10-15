pragma solidity >=0.5.0 <0.6.0;

import "./datacreation.sol";

contract DataViewing is HealthDatabase {

    function viewData(uint personId) external view returns(struct[] storage) {
        return personIdToData[personId];
    }

}
