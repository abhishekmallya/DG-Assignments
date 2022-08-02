# Country-Capital-API 
This API provides means of retrieving the name of country by taking the capital city name as the input.

# Pre-requisites
## Installing Python
You can either download python from the official [Python](https://www.python.org/downloads/) downloads page.

If you want to learn how to install python using CLI follow me:
### <ins> Step 1: Update and Refresh Repository Lists </ins> 
Open a terminal window, and enter the following:
``` 
$ sudo apt update 
```

### <ins> Step 2: Install Supporting Software </ins>
The software-properties-common package gives you better control over your package manager by letting you add PPA (Personal Package Archive) repositories.
```
$ sudo apt install software-properties-common
```

### <ins> Step 3: Add Deadsnakes PPA </ins>
Deadsnakes is a PPA with newer releases than the default Ubuntu repositories. Add the PPA by entering the following:
```
$ sudo add-apt-repository ppa:deadsnakes/ppa
```
The system will prompt you to press enter to continue. Do so, and allow it to finish. Refresh the package lists again:
```
$ sudo apt update
```

### <ins> Step 4: Install Python 3 </ins>
Now you can start the installation of Python 3.8 with the command:
```
$ sudo apt install python3.8
```
Once installation is done, verify the python version.
```
$ python --version
```
## Create an Environment
Create a project folder and a `venv` folder within:
```
$ mkdir myproject
$ cd myproject
$ python3 -m venv <Your Virtual Environment Name>
```

## Activate the environment
Before you work on the project, activate the corresponding environment:
```
$ . <Your Virtual Environment Name>/bin/activate
```
Here `.` refers to CWD.
Your shell prompt will change to show the name of the activated environment.

## Install Flask
Within the activated environment, use the following command to install Flask:
```
$ pip install Flask
```
Hurray!, You're all set. Flask is now installed.

## Deployment of the Project
Once you're done with coding and ready to see the project in action, run these commands:
```
$ flask run
$ uvicorn main.py
```
## API Endpoints for this Project
Microservice endpoint for this API available [here](https://example.com/country-capital/<query-params>) for your reference.
