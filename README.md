# Usage

Build the container with

```sh
docker compose build
```
and then run the container using

```sh
docker compose run --rm webos-cli
```

You will be dropped into a bash shell inside the container where you can use the webOS CLI. For documentation on how to use the CLI, see its [GitHub Page](https://github.com/webos-tools/cli).

The `--rm` flag ensures that the container does not linger around after you're done using it. The _.ssh_ and _.webos_ directories are configured as volumes for persistency. Additionally, a _data_ directory will be created in the directory of the compose file. This allows you to easily bring files into the container, e.g. application binaries you wish to install on you TV.