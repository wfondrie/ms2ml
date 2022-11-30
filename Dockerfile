
FROM --platform=linux/amd64 python:slim
LABEL MAINTAINER="J. Sebastian Paez"
COPY dist/*.whl /tmp/
WORKDIR /app
RUN WHEEL=$(ls /tmp/*.whl) && pip install ${WHEEL}
