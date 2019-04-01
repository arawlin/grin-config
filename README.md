# grin-config

## directory structure

```graph
- grin
    - data
    - tool
```

## init

### running a synced node

1. `curl https://sh.rustup.rs -sSf | sh; source $HOME/.cargo/env`

1. `apt install build-essential cmake git libgit2-dev clang libncurses5-dev libncursesw5-dev zlib1g-dev pkg-config libssl-dev llvm`

1. download or build
    ```bash
    wget https://github.com/mimblewimble/grin/releases/download/v1.0.2/grin-v1.0.2-498013739-linux-amd64.tgz
    ```

    ```bash
    git clone https://github.com/mimblewimble/grin.git
    cd grin
    cargo build --release
    ```

1. config grin-server.toml
    - generate config `./cli.sh server config`
    - modify in file `grin-server.toml`
        - `run_tui = false`
        - `enable_stratum_server = true`

1. start node `./start.sh`

### running a wallet

1. config `grin-wallet.toml`
    - `./cli.sh wallet init`
    - set password in file `wallet_pass`
        - **wallet_pass must has line break**
    - remember **recovery phrase**
    - the path is in `$HOME/.grin/main`

1. start wallet listening `./start_wallet.sh`

### mining

1. download or build
    ```bash
    wget https://github.com/mimblewimble/grin-miner/releases/download/v1.0.2/grin-miner-v1.0.2-480780314-linux-amd64.tgz
    ```

    ```bash
    git clone https://github.com/mimblewimble/grin-miner.git
    cd grin-miner
    git submodule update --init
    cargo build --release
    ```

1. config `grin-miner.toml`
    - `run_tui = false`
    - `nthreads = 4`

1. miner mining `./start_miner.sh`

## cmd

```bash
./cli.sh help
./cli.sh wallet help
./cli.sh client help

./cli.sh client status

./cli.sh wallet account
./cli.sh wallet info
```
