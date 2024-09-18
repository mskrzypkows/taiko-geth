#!/bin/sh
set -e

# Check if the data directory is empty
if [ ! -d /data/taiko-geth/geth/chaindata ]; then
    echo "Running geth init..."
    geth init --datadir /data/taiko-geth /neth_genesis.json
    echo "=============> geth init completed"
fi

# Execute geth with the provided arguments
exec geth "$@"