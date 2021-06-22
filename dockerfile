FROM python:3.9.5-alpine3.13

WORKDIR /flask-app

COPY . .
RUN pip install -r requirements.txt

ENV FLASK_APP=hello.py

CMD flask run -h 0.0.0.0 -p 5000 
