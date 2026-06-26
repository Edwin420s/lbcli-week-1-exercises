#!/bin/bash
bitcoin-cli -regtest createwallet "builderswallet"
# Mine 101 blocks to get spendable coins
ADDR=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 $ADDR
