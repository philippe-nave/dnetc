FROM alpine

# Install dependencies
#RUN apt-get update -y
#RUN apt-get -y install mysql-client
RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN apk add --update curl && rm -rf /var/cache/apk/*

# Install app
ADD setup /home/dnetc

CMD ["/home/dnetc/execute"]
