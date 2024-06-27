## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

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

### Common Commands

#### Use a non-IDE Terminal to store the Private Key (Never use .env)

```shell
$ cast wallet import defaultKey --interactive
```

#### Use script with stored private key on keystore

```shell
$ forge script script/DeployCounter.sol --rpc-url http://127.0.0.1:8545 --broadcast --account defaultKey --sender 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266 -vvvv
```

#### Use script with Anvil

```shell
$ forge script script/DeployCounter.sol --rpc-url http://127.0.0.1:8545 --broadcast --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
```

#### Send transaction from cli

```shell
$ cast send 0x5FbDB2315678afecb367f032d93F642f64180aa3 "setNumber(uint256)" 10 --rpc-url http://127.0.0.1:8545 --account defaultKey
```

#### Call contract from cli

```shell
$ cast call 0x5FbDB2315678afecb367f032d93F642f64180aa3 "number()"
```

#### Hex to decimal

```shell
$ cast --to-base 0x714c2 dec
```

#### Remove bash history

````shell
$ rm bash_history
```dd

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
````
