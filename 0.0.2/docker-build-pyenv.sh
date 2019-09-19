
docker build -t pyenv36 -f Dockerfile.pyenv  .
docker tag pyenv36:latest 487475698477.dkr.ecr.ap-northeast-1.amazonaws.com/pyenv36:latest
docker push 487475698477.dkr.ecr.ap-northeast-1.amazonaws.com/pyenv36:latest

