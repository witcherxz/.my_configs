# Bluetooth aliases
alias btc='bluetoothctl connect $(bluetoothctl devices | fzf | awk "{print \$2}")'

