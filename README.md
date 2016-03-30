Docker container for Shiny Server
=======================

[![Docker Repository on Quay](https://quay.io/repository/lc00/docker-shiny-server/status "Docker Repository on Quay")](https://quay.io/repository/lc00/docker-shiny-server)

The image is also available from [Docker Hub](https://hub.docker.com/r/sergii/docker-shiny-server/).

## Usage:

To run a container with Shiny Server
```sh
docker run -d -p 3838:3838 sergii/docker-shiny-server
```

If you run `docker-machine` you need to find IP of the running: `docker-machine ip machine_name`

Or just generate a complete URL of Shiny server:
```sh
echo http://$(docker-machine ip machine_name):3838
```

In order to run your application you can use [Docker Volumes](https://docs.docker.com/engine/userguide/containers/dockervolumes/)
```sh
docker run -d -p 3838:3838 -v ~/pop:/srv/shiny-server/pop sergii/docker-shiny-server`
```
In this case, our application is located in ~/pop. Running application should be available by URL:

```sh
echo http://$(docker-machine ip machine_name):3838/pop
````
Now you can just edit you R files, without a need to rebuild an image every time. Be aware, folder sharing works for OSX docker-machine automatically only if your project is located in a home directory.
