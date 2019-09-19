# version
python 3.6.8
Django 2.1.7
mysqlclient 1.3.12

export app_name=<APP_NAME>
. docker-build-anyenv.sh
. docker-build-pyenv.sh
. docker-build-gis.sh
. docker-build-mecab.sh
. docker-compose-build.sh
. docker-compose-exec.sh
. docker-compose-up.sh

