#!/bin/bash
echo "Deploy!"
echo "GIT_COMMIT $GIT_COMMIT"
echo "GIT_BRANCH $GIT_BRANCH"
echo "GIT_AUTHOR_NAME $GIT_AUTHOR_NAME"
echo "GIT_AUTHOR_EMAIL $GIT_AUTHOR_EMAIL"


cd /home/gabor/work/demo-flask-project;
/usr/bin/git pull
sudo /usr/sbin/service uwsgi reload
