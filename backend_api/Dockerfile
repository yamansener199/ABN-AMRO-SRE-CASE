FROM python:3.8-slim
RUN apt-get update && apt-get install -y gcc python3-dev
WORKDIR /backend_api_app
COPY . /backend_api_app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0"]