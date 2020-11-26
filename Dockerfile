FROM python:3.9.0-slim


ENV APP_HOME /app
WORKDIR ${APP_HOME}

COPY . ./

# Upgrade PIP
RUN pip install pip pipenv --upgrade

# sklearn opencv, numpy, and pandas
RUN pip install numpy pandas requests tablib

# Project installs
RUN pipenv install --skip-lock --system --dev

CMD ["./scripts/entrypoint.sh"]
