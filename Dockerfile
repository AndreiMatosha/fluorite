FROM python:3.11-slim

WORKDIR /flourite

COPY . /flourite/

EXPOSE 5000

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# configure the container to run in an executed manner
ENTRYPOINT [ "python3" ]

CMD ["app.py" ]