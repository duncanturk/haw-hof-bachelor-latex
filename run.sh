docker run --rm -v $PWD:/tmp duncanturk/ubuntu-latex:19.04 make "$@"
docker run --rm -v $PWD:/tmp duncanturk/ubuntu-latex:19.04 chown $UID:$(id -g $UID) . -R
