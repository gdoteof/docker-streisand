#Dockerfile for streisand#


Sets up a container running streisand, meant for deploying on remote servers via API

##Tested: 

- [x] Digital Ocean


##Untested
- [ ] Amazon
- [ ] Linode
- [ ] Rackspace


```
git clone https://github.com/gdoteof/docker-streisand.git

cd docker-streisand

sudo docker build -t streisand .

sudo docker run -i -t streisand
```
