FROM python:3.6.5
ENV PYTHONUNBUFFERED 1

# pip install
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ADD . /code/
