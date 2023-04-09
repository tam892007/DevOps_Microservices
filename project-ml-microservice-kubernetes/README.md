[![tam892007](https://circleci.com/gh/tam892007/DevOps_Microservices.svg?style=svg)](https://circleci.com/gh/tam892007/DevOps_Microservices)

## Project Overview

An API to predict Boston Housing Price, based on a pre-trained, `sklearn` model that has been trained to predict according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The data was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). The api is written using Python flask - in a provided file, `app.py`— that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Code Explanation

* [app.py](app.py) : API  
* [make_prediction.sh](make_prediction.sh) : Sample curl to test locally
* [Makefile](Makefile) : Make commands
* [requirements.txt](requirements.txt) : Dependencies
* [run_docker.sh](run_docker.sh) : Shell script to build and run in Docker
* [run_kubernetes.sh](run_kubernetes.sh) : Shell script to run in K8S
* [upload_docker.sh](upload_docker.sh): Upload docker image to docker hub
