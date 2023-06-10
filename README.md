# Please don't use this.  Leaving it for historical purpose only.








# Dockerfile for streisand


You can use the docker-hub automated build (Easy Mode), or build the image yourself

Sets up a container running https://github.com/jlund/streisand, meant for deploying on remote servers via API

### Easy Mode
```
mkdir generated-docs
sudo docker run -v generated-docs:/root/streisand/generated-docs/ -it gdoteof/streisand
```

This will prompt you to enter your API credentials

After it's finished, streisand will try and xdg-open the generated documentation (which will fail).

Note that the name of the html file will be the same as the name you gave in the server setup. If you name your server `streisand-demo`, then the file will be `streisand-demo.html`.


### Build the image yourself

```
git clone https://github.com/gdoteof/docker-streisand.git

cd docker-streisand

docker build -t streisand .
mkdir generated-docs
docker run -v generated-docs:/root/streisand/generated-docs/ -it --name streisand streisand
```


## Supported Providers

### Tested

- [x] Digital Ocean
- [x] Linode

### Untested
- [ ] Amazon
- [ ] Rackspace

