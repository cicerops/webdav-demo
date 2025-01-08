# WebDAV demo rig

Walkthrough using [Rclone] to sync directory trees from a
[Local Filesystem] to a remote [WebDAV] share.

- End-to-end, based on [docker-nginx-webdav-nononsense].

- Intended to copy/paste snippets into your own solutions.

- On the client side, you can use any WebDAV client, for example [QuickDAV].

## Configure
Configure Rclone per `rclone.conf`.

Set password. When using Rclone, it needs to be [obscured].
```shell
echo "password1" | rclone obscure -
```

## Usage
Start WebDAV server.
```shell
sh server.sh
```

Enumerate remote directory for testdrive purposes.
```shell
rclone --config rclone.conf lsl public-ds:/datasets
```

Let's [sync].
```shell
sh client.sh
```


[docker-nginx-webdav-nononsense]: https://github.com/dgraziotin/docker-nginx-webdav-nononsense
[Local Filesystem]: https://rclone.org/local/
[obscured]: https://rclone.org/commands/rclone_obscure/
[QuickDAV]: https://sciactive.com/quickdav/
[Rclone]: https://rclone.org/
[sync]: https://rclone.org/commands/rclone_sync/
[WebDAV]: https://rclone.org/webdav/
