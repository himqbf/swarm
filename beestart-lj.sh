#!/usr/bin/expect
spawn bee start --verbosity 5 --swap-endpoint https://goerli.infura.io/v3/35a0c59af45144afab3d0065d8c44655 --debug-api-enable --clef-signer-enable --clef-signer-endpoint /var/lib/bee-clef/clef.ipc
expect "*Password"
send "LIU86780831.\r"
expect "*Confirm*"
send "LIU86780831.\r"
expect eof