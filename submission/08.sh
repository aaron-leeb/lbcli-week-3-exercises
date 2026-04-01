# What is the receiver's address in this partially signed transaction?
# transaction=cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA

psbt="cHNidP8BAHsCAAAAAhuVpgVRdOxkuC7wW2rvw4800OVxl+QCgezYKHtCYN7GAQAAAAD/////HPTH9wFgyf4iQ2xw4DIDP8t9IjCePWDjhqgs8fXvSIcAAAAAAP////8BigIAAAAAAAAWABTHctb5VULhHvEejvx8emmDCtOKBQAAAAAAAAAA"

receiver_address=$(bitcoin-cli -regtest -named decodepsbt psbt=$psbt | jq -r '.tx' | jq -r '.vout[0]' | jq -r '.scriptPubKey' | jq -r '.addresses[0]')

echo $receiver_address
