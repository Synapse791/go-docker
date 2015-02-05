# Go Development Docker container
---
### Overview
The purpose of this container is to remove the need to install go on your local machine. Simply run this container and mount your local code to the /gocode directory. The CMD is set to run /bin/bash and the `PATH` and `GOPATH` environment variables are set when building the container so all you need to do is run the container and your ready to run your go program!

### Running the container

The container is set up so that all the legowrk is already done. All you have to do is clone this repository and then run the followig commands, replacing `/path/to/code` to the root of your go code. This is the folder containing your `bin`, `pkg` and `src` folders.

```sh
cd go-docker
sudo docker build -t golang .
sudo docker run -ti -v /path/to/code:/gocode golang
```

Running these commands will drop you into a bash prompt in the container. From here you can now install your go programs and execute them with commands like the following.

For the program `hello` located in src/hello,
```sh
go install hello
hello
```
