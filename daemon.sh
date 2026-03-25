#!/bin/bash

./run_electrum stop && \
    ./run_electrum daemon -d && \
    ./run_electrum load_wallet