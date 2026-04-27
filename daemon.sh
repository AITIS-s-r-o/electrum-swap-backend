#!/bin/bash

set -euo pipefail

echo "# Stop electrum if it runs"
./run_electrum --regtest stop 2>/dev/null || true

echo "# Start electrum in daemon mode"
./run_electrum --regtest daemon -d

echo "# Load electrum wallet"
./run_electrum --regtest load_wallet
echo "✅  Electrum daemon is ready with wallet loaded."
