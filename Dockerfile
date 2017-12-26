FROM python:3.6.3

# Set wd
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Add requirements.txt
ADD ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

ADD . /usr/src/app

CMD python manage.py runserver -h 0.0.0.0
# CMD ls
