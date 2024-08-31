- rclone config
- generate new remote
- clientid: <clientid> from gcp
- clientsecret: <clientsec> from gcp
- provide clientid and secret
- rclone mount <NameRemote>: ~/home/drive

## runing rclone service

```bash
systemctl --user daemon-reload
systemctl --user enable --now rclone@Drive
systemctl --user start --now rclone@Drive

```
