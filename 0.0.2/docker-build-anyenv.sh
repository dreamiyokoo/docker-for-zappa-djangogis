$(aws ecr get-login --no-include-email --region ap-northeast-1)
docker build -t anyenv -f Dockerfile.anyenv  .
docker tag anyenv:latest 487475698477.dkr.ecr.ap-northeast-1.amazonaws.com/anyenv:latest
docker push 487475698477.dkr.ecr.ap-northeast-1.amazonaws.com/anyenv:latest

