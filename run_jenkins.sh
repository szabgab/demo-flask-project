#!/bin/bash

virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
pytest --junitxml=test-results/$BUILD_NUMBER.xml

