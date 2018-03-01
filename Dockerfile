FROM alpine

RUN apk add --no-cache gpsd bash

ADD run.sh /run.sh

CMD /run.sh
