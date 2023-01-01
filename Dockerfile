FROM python:3.10.9-slim-bullseye
COPY requirements.txt .
RUN mkdir /dir && \
    pip install -r requirements.txt
ADD app.py /dir
ADD creds.py /dir
WORKDIR /dir
CMD [ "python", "app.py"] 
