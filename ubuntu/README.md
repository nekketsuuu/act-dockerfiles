Base images: https://github.com/catthehacker/docker_images

## Build

```sh
./build.sh
```

### Config

`~/.actrc`

```
-P ubuntu-latest=nekketsuuu/ubuntu:act-latest
-P ubuntu-20.04=nekketsuuu/ubuntu:act-20.04
-P ubuntu-18.04=nekketsuuu/ubuntu:act-18.04
```

## Software

- moby-compose
    - `docker compose` V2. V2-compatible `docker-compose` command is also installed using <https://github.com/docker/compose-switch>.
- mysql-server
