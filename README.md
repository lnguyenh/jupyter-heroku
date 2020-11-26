# Credits

Forked from https://github.com/codingforentrepreneurs/Jupyter-x-Docker-on-Heroku
The only differences are in the packages installed by default and in the simplified Readme

# Instructions

- Checkout the project
- Create a new password (ipython needs to be installed somehow on your computer)
`ipython -c "from notebook.auth import passwd; passwd()"`
- Paste the new password inside the `conf/jupyter.py` file at the line starting with `c.NotebookApp.password` 
- build docker image (and run it if you like)
```
docker build -t some-cool-name -f Dockerfile .
docker run --env PORT=8888 -it -p 8888:8888 some-cool-name
``` 
# Heroku Setup

##### 1. Create heroku app
```
heroku create some-cool-name
```

##### 2. Login to Heroku Container Registry
```
heroku container:login
```

#### 7. Push & Release To Heroku

```bash
heroku container:push web
heroku container:release web 
```

#### 8. That's it
```
heroku open
```
This should allow you to open up your project.

