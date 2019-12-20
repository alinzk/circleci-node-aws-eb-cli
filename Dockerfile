FROM circleci/node:10

USER root

RUN apt-get update && \
  apt-get install -y python-pip python-dev && \
  pip install --upgrade awscli \
  awsebcli

RUN npm i npm@latest -g

RUN node -v
RUN npm -v
RUN python --version
RUN aws --version

# Expose credentials volume
RUN mkdir ~/.aws

USER circleci
