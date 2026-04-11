#!/bin/bash

./run_electrum --regtest stop 2>/dev/null || true
./run_electrum --regtest daemon -d
./run_electrum --regtest load_wallet
echo "✅  Electrum daemon is ready with wallet loaded."