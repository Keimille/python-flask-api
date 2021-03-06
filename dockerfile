FROM python:3

WORKDIR /usr/src/app

COPY . .

RUN apt-get -y update
#RUN apt-get install mysql-server
#RUN apt-get install mysql-client
RUN pip3 install -r requirements.txt
EXPOSE 80

CMD ["python3", "./app.py"]