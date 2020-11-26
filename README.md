## Credits

Forked from https://github.com/codingforentrepreneurs/Jupyter-x-Docker-on-Heroku

## About

This is a convenience repository that allows quick creation of a jupyter notebook running in Heroku or locally.

## Instructions

- Checkout the project
- Create a new password (ipython needs to be installed somehow on your computer)
```
ipython -c "from notebook.auth import passwd; passwd()"
```
- Paste the new password inside the `conf/jupyter.py` file at the line starting with `c.NotebookApp.password` 
- build docker image (and run it if you like)
```
docker build -t some-cool-name -f Dockerfile .
```
- if you wanna run the notebook locally, you can do:
```
docker run --env PORT=8888 -it -p 8888:8888 some-cool-name
``` 
## First Heroku Setup
After doing everything described in the instructions, do the following

```
heroku create some-cool-name
heroku container:login
heroku container:push web
heroku container:release web
heroku open
```

## Modifications
If you do modification, for example adding python packages, do the follwing to deploy it:

```
docker build -t some-cool-name -f Dockerfile .
heroku container:login
heroku container:push web
heroku container:release web
heroku open
```
