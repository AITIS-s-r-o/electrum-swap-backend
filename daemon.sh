#!/bin/bash

./run_electrum stop 2>/dev/null || true
./run_electrum daemon -d
./run_electrum load_wallet
echo "✅  Electrum daemon is ready with wallet loaded."