FROM python:3.7.13

RUN mkdir /flask-workflow-app
WORKDIR /flask-workflow-app
COPY serve.py requirements.txt /flask-workflow-app/
RUN pip3 install -r requirements.txt
ENV FLASK_APP=serve
ENV FLASK_ENV=development
EXPOSE 5000
CMD flask run --host=0.0.0.0