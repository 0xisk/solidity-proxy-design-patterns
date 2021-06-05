//SPDX-License-Identifier: MIT
import './EternalStorage.sol';

pragma solidity 0.8.1;

library BallotLib {
    function getNumberOfVotes(address _eternalStorage) public view returns (uint256) {
        return EternalStorage(_eternalStorage).getUIntValue(keccak256('votes'));
    }

    function setVoteCount(address _ethernalStorage, uint _voteCount) public {
        EternalStorage(_ethernalStorage).setUIntValue(keccak256('votes'), _voteCount);
    }
}