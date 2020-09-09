# udacity_devops_microservice
[![CircleCI](https://circleci.com/gh/priyanka92jain/udacity_devops_microservice/tree/master.svg?style=svg)](https://circleci.com/gh/priyanka92jain/udacity_devops_microservice/tree/master)
# Cloud DevOps Engineer Nanodegree - Operationalize a Machine Learning Microservice API

## Project Overview

This is a machine learning api that's run using Kubernetes. The api is a pre-trained `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

---

### Running the application

1. Standalone:
```
#Setup a python virtual environment and activate it
python3 -m venv ~/.devops
source ~/.devops/bin/activate

#Install the necessary dependencies
make install

#Run the main application
python app.py
```
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


### Predict housing prices

While the application is running, run `./make_predicion.sh` to make calls to the API

### Upload Docker image to DockerHub
After running `./run_docker.sh`, execute script`./upload_docker.sh` to upload image to DockerHub

---

## Project Files

* __app.py:__ The Flask API 
* __requirements.txt:__ Prerequisites of Python packages for Flask API to run
* __model_data/boston_housing_prediction.joblib:__ Pretrained sklearn model for the API
* __Dockerfile:__ Defines the container in which the API runs
* __Makefile:__ Commands to install and lint the applicaiton
* __run_docker.sh:__ Runs the API in a Docker container (defined by Dockerfile)
* __run_kubernetes.sh:__ Runs the API as a Kubernetes deployment
* __make_prediction.sh:__ When the applicaiton is running, this script can be run to make a call to the API and generate a prediciton
* __upload_docker.sh:__ Tags and uploads the Docker image to DockerHub
* __output_txt_files/docker_out.txt:__ Console output from running run_docker.sh and make_prediction.sh
* __output_txt_files/kubernetes_out.txt__ Console output from running run_kubernetes.sh and make_prediction.sh
* __.circleci/config.yml:__ Defines the circleCI deployment
