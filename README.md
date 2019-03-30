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

1. `./cli.sh server config`

1. config grin-server.toml

## cmd

1. help
    ```cmd
    ./cli.sh help
    ./cli.sh wallet help
    ./cli.sh client help
    ```
