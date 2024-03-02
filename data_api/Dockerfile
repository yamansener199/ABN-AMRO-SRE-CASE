FROM python:3.8-slim
WORKDIR /data_api_app
COPY . /data_api_app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0"]