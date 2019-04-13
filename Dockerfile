FROM python:3

WORKDIR /root/

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./*.* ./

VOLUME ["/mnt/charts/"]

USER root

RUN chmod +x /root/update.sh

CMD ["/root/update.sh"]
