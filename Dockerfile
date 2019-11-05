FROM ubuntu
ENV ORA_CLOUD_CLUSTER="ASHBURN"
LABEL MAINTAINER av@devops.com
ARG LICENSE_KEY="123-0001-223"
#RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "LICENSE KEY IS" $LICENSE_KEY
WORKDIR /code
CMD sh Sample.sh testfile
