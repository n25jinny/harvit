pragma solidity ^0.4.24;

import "../../../openzeppelin-solidity/contracts/token/ERC20/ERC20Pausable.sol";
import "../../../openzeppelin-solidity/contracts/token/ERC20/ERC20Burnable.sol";
import "../../../openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

/**
 * @title HarvitToken
 * @dev Harvit ERC20 Token, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract HarvitToken is ERC20Pausable, ERC20Burnable, ERC20Detailed {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Harvit", "HAVT", 18) {
        _mint(msg.sender, 3000000000 * (10 ** uint256(decimals())));
    }
}
