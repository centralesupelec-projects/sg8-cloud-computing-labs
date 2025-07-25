FROM python:3.7
WORKDIR /web
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN chmod -x app.py
ENTRYPOINT [ "python", "app.py" ]