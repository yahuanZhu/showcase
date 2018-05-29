FROM nexus-registry.cn133.azure.net/baselibrary/python:3.6-alpine

ADD index.html /app/index.html

RUN \
    addgroup -S app && adduser -S -g app app && \
    chown -R app:app /app

USER app

WORKDIR /app

CMD ["python3", "-m", "http.server"]
