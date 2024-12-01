## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

### Scripts

Useful scripts to interact or test the smart contract:
forge script script/USDe.s.sol:USDeScript --private-key $PRIVATE_KEY --rpc-url $RPC_URL -vvvv --broadcast  --via-ir
forge script script/InsuranceFactory.s.sol:InsuranceFactoryScript --private-key $PRIVATE_KEY --rpc-url $RPC_URL -vvvv --broadcast  --via-ir
forge script script/InsurancePool.s.sol:InsurancePoolScript --private-key $PRIVATE_KEY --rpc-url $RPC_URL -vvvv --broadcast  --via-ir
forge script script/PurchasePolicy.s.sol:PurchasePolicyScript --private-key $PRIVATE_KEY_2 --rpc-url $RPC_URL -vvvv --broadcast  --via-ir
forge script script/SubmitClaimComplete.s.sol:SubmitClaimCompleteScript --private-key $PRIVATE_KEY_2 --rpc-url $RPC_URL -vvvv --broadcast  --via-ir  --etherscan-api-key $ETHERSCAN_API_KEY \
    --verifier-url "https://api-sepolia.arbiscan.io/api"
forge script script/CheckSpending.s.sol:CheckSpendingScript --private-key $PRIVATE_KEY_2 --rpc-url $RPC_URL -vvvv --broadcast  --via-ir
forge script script/CheckBenefit.s.sol:CheckBenefitScript --private-key $PRIVATE_KEY_2 --rpc-url $RPC_URL -vvvv --broadcast  --via-ir
forge script script/ApproveSpending.s.sol:ApproveSpendingScript --private-key $PRIVATE_KEY_2 --rpc-url $RPC_URL -vvvv --broadcast  --via-ir
forge test test/RespondToClaim.t.sol --rpc-url $RPC_URL -vvvv --via-ir

