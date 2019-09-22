$(aws ecr get-login --no-include-email --region ap-northeast-1)
docker build -t anyenv -f Dockerfile.anyenv  .

