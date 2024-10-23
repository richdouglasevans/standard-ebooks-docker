#!/usr/bin/env bash

python3 -m pipx ensurepath

cd seb

/root/.local/bin/se create-draft -a "${1}" -t "${2}" --pg-id ${3}
