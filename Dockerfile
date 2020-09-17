FROM       lqwangxg/python
LABEL      maintainer="lqwangxg@gmail.com"

WORKDIR    /app
COPY       requirements.txt /app/
COPY       *.py /app/
RUN        pip install -r requirements.txt \
        && chmod a+x *.py

CMD        ["./main.py"]
