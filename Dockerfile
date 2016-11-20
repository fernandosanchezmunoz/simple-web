FROM frolvlad/alpine-python2
EXPOSE 80
WORKDIR /code
ADD . /code
RUN touch index.html
RUN apk --update add py-netifaces
CMD python index.py

