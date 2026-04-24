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

# Running on regtest.

## Create configuration file.

For regtest, modify `~/.electrum/regtest/config` file and put there this content:

```json
{
    "check_updates": false,
    "config_version": 3,
    "decimal_point": 8,
    "log_to_file": true,
    "logs_num_files_keep": 10,
    "nostr_relays": "ws://127.0.0.1:8080",
    "rpcpassword": "pass",
    "rpcport": 7777,
    "rpcuser": "user",
    "terms_of_use_accepted": 1,
    "use_gossip": true
}
```

This configuration assumes that you run a Nostr relay on localhost on port 8080.


## Start daemon.

```bash
./run_electrum --regtest daemon -d

```

## Create a new regtest wallet.

```bash
./run_electrum --regtest create
```

## Stop daemon.

```bash
./run_electrum --regtest daemon -d

```

## Run the daemon regularly.
To actually run the app, execute the following command:

```bash
./daemon-regtest.sh
```

To test that the app is working correctly, you can use the following command:

```bash
./run_electrum --regtest get_submarine_swap_providers
```

See the [README](https://github.com/spesmilo/electrum#electrum---lightweight-bitcoin-client) of the forked Electrum codebase for more details on how to use the app and its features.

## Resources

- Get Help: [Support Center](https://t.me/whales_secret_support)
- Follow us: [X/Twitter](https://x.com/WhalesSecret)
