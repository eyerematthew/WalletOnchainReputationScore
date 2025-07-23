// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ITrap} from "drosera-contracts/interfaces/ITrap.sol";

contract WalletReputationOnchain is ITrap {
    address public constant TARGET_WALLET = 0x764303d94846475D6121e47C79709aa049958D95;
    string constant DISCORD_NAME = "cryptomaster869#0000";

    function collect() external view returns (bytes memory) {
        uint256 reputationScore = 1337; // Simulated reputation score
        return abi.encode(TARGET_WALLET, reputationScore, DISCORD_NAME);
    }

    function shouldRespond(bytes[] calldata data) external pure returns (bool, bytes memory) {
        (address wallet, uint256 score, string memory discord) = abi.decode(data[0], (address, uint256, string));

        if (wallet != TARGET_WALLET || score < 1000 || bytes(discord).length == 0) {
            return (false, "");
        }

        return (true, abi.encode(wallet, discord));
    }
}
