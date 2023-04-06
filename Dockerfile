from python

RUN apt-get -y install libpq-dev

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /opt/app
WORKDIR /opt/app

COPY app /opt/app/app
EXPOSE 8000/tcp
EXPOSE 8000/udp

CMD ["uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "8000"]
