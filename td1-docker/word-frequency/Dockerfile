FROM python:3.7-slim
RUN mkdir -p /app
WORKDIR /app
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt
COPY ./main.py /app/
ENTRYPOINT ["python", "main.py"]