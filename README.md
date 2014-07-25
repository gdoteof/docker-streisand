#Dockerfile for streisand#


Sets up a container running streisand, meant for deploying on remote servers via API

##Tested: 

- [x] Digital Ocean
- [x] Linode

##Untested
- [ ] Amazon
- [ ] Rackspace


```
git clone https://github.com/gdoteof/docker-streisand.git

cd docker-streisand

sudo docker build -t streisand .
sudo docker run -i -t --name streisand streisand
```

This will prompt you to enter your API credentials

After it's finished, streisand will try and xdg-open the generated documentation (which will fail).  You should copy it to the host with

```
sudo docker cp streisand:/root/streisand/generated-docs/streisand.html streisand.html
```
