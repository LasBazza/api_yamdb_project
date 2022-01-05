FROM python:3.8

WORKDIR /code

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN chmod +x /code/script.sh

ENTRYPOINT ["/code/script.sh"]
