# Create a native segwit address and get the public key from the address.

SEGWIT_ADDRESS=$(bitcoin-cli -regtest -named getnewaddress address_type="bech32")

PUBKEY=$(bitcoin-cli -regtest -named getaddressinfo address=$SEGWIT_ADDRESS | jq -r '.pubkey')

echo $PUBKEY
