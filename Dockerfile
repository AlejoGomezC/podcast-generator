FROM python:3.10
WORKDIR /usr/bin

COPY feed.py feed.yaml entrypoint.sh ./

RUN pip install pyyaml

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
