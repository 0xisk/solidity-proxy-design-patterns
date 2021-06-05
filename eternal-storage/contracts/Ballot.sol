//SPDX-License-Identifier: MIT
import './BallotLib.sol';

pragma solidity 0.8.1;

contract Ballot {
    using BallotLib for address;
    address eternalStorage;

    constructor(address _eternalStorage) {
        eternalStorage = _eternalStorage;
    }

    function getNumberOfVotes() public view returns (uint) {
        return eternalStorage.getNumberOfVotes();
    }

    function votes() public {
        eternalStorage.setVoteCount(eternalStorage.getNumberOfVotes() + 1);
    }
}