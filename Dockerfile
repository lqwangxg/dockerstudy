FROM       lqwangxg/python
LABEL      maintainer="lqwangxg@gmail.com"

WORKDIR    /app
COPY       linkextractor.py /app/

RUN        pip install beautifulsoup4 \
        && pip install requests \
        && chmod a+x linkextractor.py

ENTRYPOINT ["./linkextractor.py"]
