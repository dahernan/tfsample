# tfsample
Simple example of running tensorflow with Go in docker


```
# Starts the docker container, and login into the docker container
$ make login

# test that inception model is working
$ cd inception
$ go run inception_sample.go -dir=./model -image=monkey.jpg

```
