# Electrum - Lightweight Bitcoin client modified for the needs of the [Whales Exchange](https://whales.exchange) project

```
Licence: MIT Licence
Language: Python (>= 3.10)
```

This repository forks [Electrum codebase](https://github.com/spesmilo/electrum) for the needs of the [Whale's Exchange](https://whales.exchange) to provide actual swap functionality.

The complete Whale's Exchange design overview is shown in the GitHub [repository](https://github.com/AITIS-s-r-o/whales-exchange-web-app) of the frontend application.

## Contributing

We welcome contributions to the Whale's Exchange! If you have an idea for a new feature, improvement, or bug fix, please submit a pull request. For major changes, please open an issue first to discuss what you would like to change.

To set up the app locally, you should follow the following steps on Linux or Windows (WSL):

```bash
cd electrum-swap-backend

# Create a virtual environment and activate it.
python3 -m venv venv
source venv/bin/activate

# Compile the app once.
ELECTRUM_ECC_DONT_COMPILE=1 python3 -m pip install ".[gui,crypto]"
```


For mainnet, modify `~/.electrum/config` file and put there this content:

```json
{
    "blockchain_preferred_block": {
        "hash": "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f",
        "height": 0
    },
    "check_updates": false,
    "config_version": 3,
    "current_wallet": "/home/<YOUR_USER>/.electrum/wallets/default_wallet",
    "decimal_point": 8,
    "log_to_file": true,
    "logs_num_files_keep": 10,
    "nostr_relays": "wss://relay.getalby.com/v1,wss://nos.lol,wss://relay.damus.io,wss://brb.io,wss://relay.primal.net,wss://ftp.halifax.rwth-aachen.de/nostr,wss://eu.purplerelay.com,wss://nostr.einundzwanzig.space,wss://nostr.mom",
    "recently_open": [
        "/home/<YOUR_USER>/.electrum/wallets/default_wallet"
    ],
    "rpcpassword": "pass",
    "rpcport": 7777,
    "rpcuser": "user",
    "terms_of_use_accepted": 1,
    "use_gossip": true
}
```

To actually run the app, execute the following command:

```bash
./daemon.sh
```

To test that the app is working correctly, you can use the following command:

```bash
./run_electrum get_submarine_swap_providers
```

See the [README](https://github.com/spesmilo/electrum#electrum---lightweight-bitcoin-client) of the forked Electrum codebase for more details on how to use the app and its features.

## Resources

- Get Help: [Support Center](https://t.me/whales_secret_support)
- Follow us: [X/Twitter](https://x.com/WhalesSecret)
