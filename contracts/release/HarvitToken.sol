pragma solidity ^0.4.24;

import "../token/ERC20/ERC20Burnable.sol";
import "../token/ERC20/ERC20Detailed.sol";

/**
 * @title HarvitToken
 * @dev Harvit ERC20 Token, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract HarvitToken is ERC20Burnable, ERC20Detailed {
    uint256 public constant INITIAL_SUPPLY = 3000000000 * (10 ** uint256(decimals()));

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("HarvitToken", "HAVT", 18) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
