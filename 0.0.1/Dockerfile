FROM gis/stable AS gis_app
FROM mecab/stable AS mecab_app

FROM pyenv
#RUN apk --no-cache add ca-certificates
ARG app_name
WORKDIR /tmp/$app_name/
COPY --from=mecab_app /tmp/$app_name .
COPY --from=gis_app /tmp/$app_name .


#FROM pyenv AS pyenv_app

#FROM gis
#ARG app_name
#WORKDIR /tmp/task/
#COPY --from=pyenv_app /tmp/$app_name .


ENV PYTHON_VERSION 3.6.8
ENV PATH /tmp/$app_name/gis/bin:$PATH
ENV PATH /tmp/$app_name/mecab/bin:$PATH

RUN touch /var/lib/rpm/* && yum install -y mysql-devel vim 
RUN echo $PATH

RUN gdal-config --version

COPY requirements.txt /tmp/task/requirements.txt
RUN cat ${HOME}/.bashrc

RUN source ${HOME}/.bashrc && \
	pyenv virtualenv $PYTHON_VERSION $app_name && \
	pyenv local $app_name && \
	pip install --upgrade pip && \
	pip install mysqlclient -t /tmp/$app_name && \
	pip install -r /tmp/task/requirements.txt && \
        echo "pyenv local $app_name" >> ~/.bashrc

WORKDIR /var/task/

CMD ["/bin/bash"]
