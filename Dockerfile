# python runtime
FROM python:3.6.5-alpine

# working directory
WORKDIR /app

# copy current directory into the container
ADD . /app

# install requirements
RUN pip3 install -r src/requirements.txt

# make port 8000 available to the world outside
EXPOSE 5000

CMD ["gunicorn", "--config", "config.py", "src:app"]