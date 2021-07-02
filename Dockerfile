# This base image comes from https://github.com/jeffreybreen/docker-ubuntu18-blobfuse
FROM mcr.microsoft.com/azure-cli:latest

WORKDIR /work

RUN mkdir data

COPY get_data.py run.sh ./

ENV START_DATE_YEAR=2018\
    START_DATE_MONTH=6\
    START_DATE_DAY=1\
    ITERATIONS=30

ENV AZURE_STORAGE_ACCOUNT=\
    AZURE_STORAGE_SAS_TOKEN=

CMD ["./run.sh"]