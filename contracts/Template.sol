// SPDX-License-Identifier: MIT

// Recommend you to have a specific version
// 建议使用一个特定版本
pragma solidity =0.8.21;

import { IERC20 } from "./interfaces/IERC20.sol";
import { SafeERC20 } from "./libraries/SafeERC20.sol";
import { Math } from "./libraries/Math.sol";

contract Template {
    // A contract starts with some "using library" statements.
    // 最开始指明所有需要用"using...for..."关键字使用到的库.
    using SafeERC20 for IERC20;
    using Math for uint256;

    // ---------------------------------------------------------------------------------------- //
    // ************************************* Constants **************************************** //
    // ---------------------------------------------------------------------------------------- //

    // Both "constant" and "immutable" is compiled with code when deployed.
    // They will not take storage space.

    // Constants should use "UPPER_CASE_WITH_UNDERSCORES".
    uint256 public constant CONST = 1000;

    // Immutable variables should use "camelCase".
    uint256 public immutable initParameter;

    // ---------------------------------------------------------------------------------------- //
    // ************************************ Constructor *************************************** //
    // ---------------------------------------------------------------------------------------- //

    constructor() {
        initParameter = 100;
    }

    // ---------------------------------------------------------------------------------------- //
    // *************************************** Events ***************************************** //
    // ---------------------------------------------------------------------------------------- //

    // A Sample Transfer Event.
    // Mark those parameters which need to be indexed as "indexed".
    // No underline "_" for event parameters.
    event SampleTransferEvent(address indexed from, address indexed to, uint256 amount);

    // If the event name is combined with nouns & verbs, use "Past Tense".
    // ❌ event MinterAdd(address indexed minter);
    // ❌ event AddMinter(address indexed minter);
    // ✅ event MinterAdded(address indexed minter);

    // ---------------------------------------------------------------------------------------- //
    // *************************************** Errors ***************************************** //
    // ---------------------------------------------------------------------------------------- //

    error SampleCustomError();
    error SampleCustomErrorWithParameters(uint256 errorParam);
}
