# grin-config

## init

1. `curl https://sh.rustup.rs -sSf | sh; source $HOME/.cargo/env`

1. `apt install build-essential cmake git libgit2-dev clang libncurses5-dev libncursesw5-dev zlib1g-dev pkg-config libssl-dev llvm`

1. build release
    ```bash
    git clone https://github.com/mimblewimble/grin.git
    cd grin
    cargo build --release
    ```

1. config grin-server.toml
    - `./cli.sh server config`
    - modify in file `grin-server.toml`
        - `run_tui = false`
        - `enable_stratum_server = true`

1. start node `./start.sh`

1. config `grin-wallet.toml`
    - `./cli.sh wallet init`
    - set password in file `wallet_pass`
        - **wallet_pass must has line break**
    - remember **recovery phrase**
    - the path is in `$HOME/.grin/main`

1. start wallet listening `./start_wallet.sh`

## cmd

```bash
./cli.sh help
./cli.sh wallet help
./cli.sh client help

./cli.sh client status

./cli.sh wallet account
./cli.sh wallet info
```
