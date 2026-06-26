#!/bin/bash
bitcoin-cli -regtest getblockchaininfo | grep '"chain"' | cut -d'"' -f4
