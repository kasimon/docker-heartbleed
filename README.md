docker-heartbleed
=================

Dockerfile to install and run [heartbleed][1].

Usage:

  1) [Install docker][2]

  2) Build heartbleed image once:

     docker build -t <yourname>/heartbleed github.com/kasimon/docker-heartbleed

  3) Run Heartbleed from image:

     $ docker run --rm <yourname>/heartbleed github.com:443
     2014/04/09 10:37:28 github.com:443 - SAFE

  4) (optional) Create alias:

    $ alias heartbleed="docker run --rm <yourname>/heartbleed"
    $ heartbleed github.com:443
    2014/04/09 10:37:28 github.com:443 - SAFE

  5) (optional) Publish image in [docker index][3]. After publishing you can skip steps 2 and 3 on different nodes:
  
    $  docker push <yourname>/heartbleed

  [1]: https://github.com/FiloSottile/Heartbleed
  [2]: https://www.docker.io/gettingstarted/#h_installation
  [3]: https://index.docker.io/
