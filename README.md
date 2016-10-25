# RamePlayer WebUI Builder

## Examples

##### Simple usage: write build to `/tmp/webui` directory on your computer:
```
mkdir /tmp/webui
docker run --rm -v /tmp/webui:/build rameplayerorg/rameplayer-webui-builder build
```

##### Use modified `/home/user/projects/rameplayer-webui` repository:
```
docker run --rm -v /tmp/webui:/build -v /home/user/projects/rameplayer-webui:/rameplayer-webui rameplayerorg/rameplayer-webui-builder build
```

##### Open shell in container:
```
docker run -it --rm rameplayerorg/rameplayer-webui-builder /bin/bash
```
