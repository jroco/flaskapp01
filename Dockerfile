FROM python:3.8

WORKDIR /flask-app

COPY requirements.txt .

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./src ./src

CMD ["python","./src/app.py"]

