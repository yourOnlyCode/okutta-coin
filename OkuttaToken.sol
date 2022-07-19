pragma solidity ^0.8.5;

// openzepplin-contracts on github
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
// Access the Repo above to help continue building upon this Token, giving it new functionalities.

contract OkuttaToken is ERC20 {
    address public admin;
    constructor() ERC20('Okutta Token', 'OKT') {
        _mint(msg.sender, 10000 * 10 ** 18) ; // Defaults to 10^18 wei
        admin = msg.sender;
    }

    function mint(address to, uint amounr) external {
        require(msg.sender == admin, "function for admin use only");
        _mint(to, amount);
    }

    // This will burn an amount of tokens you have. I.E. if the admin wants the token to be more valuable he may burn some of his own.
    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
}