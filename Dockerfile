FROM alpine

# Install dependencies
RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN apk add --update curl && rm -rf /var/cache/apk/*

# Install app
ADD setup /home/dnetc

CMD ["/home/dnetc/execute"]
