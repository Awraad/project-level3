FROM python:3.7
USER root
# Install locust
RUN pip install pyzmq locust faker

ADD locustfile.py /config/locustfile.py
ADD runLocust.sh /usr/local/bin/runLocust.sh

ENV LOCUST_FILE /config/locustfile.py

EXPOSE 8089
RUN chmod +x /usr/local/bin/runLocust.sh
ENTRYPOINT ["/usr/local/bin/runLocust.sh"]

