docker build . -t mjml-server
docker run -it --rm -p 8889:80 --env TOKEN=secret-token mjml-server
