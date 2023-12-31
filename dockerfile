# Dockerfile
FROM python:3.7-stretch
# RUN apt-get update -y
RUN npm install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]