# Avalanche Fuji - Degen Token

In this module, I deployed the degen token contract created to the avalanche fuji testnet by connecting metamask which is connected to avalanche testnet to remix.

## Description

In this fourth module, I have created a contract which can mint , burn , transfer, redeem the items from the official Degen store . It has three items in its in-game store. This contract is verified in the avalanche testnet . I did this using gitpod along with deploying it. I was able to interact with it by pasting the deployed address.

## Getting Started

### Installing

You can fork this repository and run the commands on gitpod. you can also download the zip code locally .

### Executing program
* You will need to create a .env file and enter the missing details:
```
WALLET_PRIVATE_KEY=
SNOWTRACE_API_KEY=
```
  
* In order to deploy the contract to avalanche fuji testnet, run the below command:
```
npx hardhat run scripts/deploy.js --network fuji
```

* In order to verify the contract the deployed contract, run the below command:
```
npx hardhat verify <contract address> --netwrok fuji
```

## Help

If you need some test AVAX tokens and if the faucet is not working then you can ask in the official Avalanche discord server.

## Authors

Jaidev K [jaidevvk12@gmail.com]


## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
