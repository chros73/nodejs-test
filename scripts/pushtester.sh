#!/bin/sh

wget https://s3.amazonaws.com/awsebcli.foo.com/AWS-ElasticBeanstalk-CLI-2.6.0.tar.gz
tar xfvz AWS-ElasticBeanstalk-CLI-2.6.0.tar.gz
export PATH=$PATH:${PWD}/AWS-ElasticBeanstalk-CLI-2.6.0/eb/macosx/python2.7

cd ${PWD}/testrunner/
git init
git config user.email "chros@gmail.com"
git config user.name "Chros"
git add .
git commit -m "adding app to local git repo"

eb init -I $AWSAKEY -S $AWSSKEY -a foo-testrunner -e fooTestrunner-env --region "us-west-1" -s "64bit Amazon Linux 2013.09 running Node.js" -t "WebServer::Standard::1.0"
eb start -f
