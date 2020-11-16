docker build . -t mjml-server
docker run -it --rm -p 8889:80 mjml-server
