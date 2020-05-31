FROM openjdk:8-jre-alpine
# install dependencies and Jelastic cli
RUN apk add curl && \
    apk add bash && \
    curl -s ftp://ftp.jelastic.com/pub/cli/jelastic-cli-installer.sh | bash
# run application with this command line 
CMD ["/bin/bash"]
