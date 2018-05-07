#!/bin/bash
echo "Deploy!"

cd /home/gabor/work/demo-flask-project;
/usr/bin/git pull
sudo /usr/sbin/service uwsgi reload
