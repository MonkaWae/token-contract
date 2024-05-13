// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract MonkaWae is ERC20, ERC20Burnable, ERC20Pausable, Ownable, ERC20Permit {
    // changeable max supply for now
    uint256 public maxSupply = 9999999999999999 * 10 ** decimals();

    constructor(address initialOwner)
        ERC20("MonkaWae", "MKW")
        Ownable(initialOwner)
        ERC20Permit("MonkaWae")
    {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // The following functions are overrides required by Solidity.

    function _mint(address account, uint256 amount) internal override(ERC20) {
        require(totalSupply() + amount <= maxSupply, "Max supply exceeded");
        super._mint(account, amount);
    }

    function _update(address from, address to, uint256 value)
        internal
        override(ERC20, ERC20Pausable)
    {
        super._update(from, to, value);
    }
}
