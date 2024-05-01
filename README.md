# MonkaWae Token-Contract

This is the MonkaWae Token-Contract. It is a standard ERC20 token with some additional features. It is created for those who just want to take a look on how MonkaWae token is created and some additional features that are added to it.

## About MonkaWae Token

### General

- Name: MonkaWae
- Symbol: MKW

### Tokenomics

- Initial supply: 1000000 (1 million)
- Max supply: 9 999 999 999 999 999
- decimals: 18

### Chain

- Ethereum
- Binance
- Polygon

***Note: Still left to decide***

### Liquidity and Tax

- **Wallet Tax**: 1% on buy, sell and transfer to other token
- **Liquidity Tax**: 1% tax on Buy, sell and transfer sent to liquidity pool
- **Dividend Tax**: 1% tax on Buy, Sell and Transfer sent to token holder with amount of minimum 1 token
- **Ecosystem Tax**: 1% tax on Buy, Sell and Transfer sent to specific wallet or DAO contract
- **Team Tax**: 1% tax on Buy, Sell and Transfer sent to specific wallet or smart contract to share between us or our team
- **Liquidity Pool/DEX**: [PancakeSwap](https://pancakeswap.finance/)

### Token Features

- **Mintable**: The owner will be able to mint new tokens until the total supply reaches the maximum supply
- **Liquidity**: A default exchange (V2 only) where we want to add liquidity. In our case it will be PancakeSwap
- **Pausable**: Pausable allows owner to globally freeze the entire token contract - no one will be able to move their tokens, including owner
- **Blacklist**: Adds a blacklist that owner can use to freeze specific addresses, disallowing any transactions to and from them until they are unblacklisted
- **Foreign Token Recovery**: Utility function to recover other ERC-20 tokens that were sent to your token contract. (Valuable tokens will be credited/sent to specified [changeable] wallet/smart contract)
- **ERC-2612 Permit Extension**: Utility function for signing gasless approvals through third-party smart contracts
- **Hack Mitigation Protocol (Lossless)**: Lossless is a proprietary protocol that allows you to mitigate any damages deriving from hacks/exploits revolving around your token
