// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    string public degen_igstore;
    constructor() ERC20("Degen", "DGN") {
        degen_igstore="The Official Degen store has the following redeemable items: 1. Degen Lamp 2. Degen Toy 3. Degen Console ";
    }

        function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
        }

        function redeem(uint256 redeem_value) public {
            if(balanceOf(msg.sender)<1000){
                revert("Insufficient Balance");
            }
            assert(redeem_value>0 && redeem_value<4);
            _burn(msg.sender, redeem_value*250);
        }
}
