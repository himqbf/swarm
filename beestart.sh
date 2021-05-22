#!/usr/bin/expect
spawn bee start --verbosity 5 --swap-endpoint https://goerli.infura.io/v3/5d419ee9ec5c42a79adf1bce37efaa97 --debug-api-enable --clef-signer-enable --clef-signer-endpoint /var/lib/bee-clef/clef.ipc
expect "*Password*"
send "qbfqq19920111\n"
expect "*Confirm password*"
send "qbfqq19920111\n"