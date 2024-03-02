import time
import random
import os
import requests
from flask import Flask
from flask import Flask, request, abort

app = Flask(__name__)

EXTERNAL_INTEGRATION_KEYS = {
    "development": "development_integration_key",
    "production": "production_integration_key"
}

def generate_log():
    logs = [
        "Success",
        "Created",
        "Failed",
    ]
    return random.choice(logs)
@app.route('/download_external_logs')
def download_external_logs(environment):
    environment = os.environ.get("ENVIRONMENT")
    integration_key = EXTERNAL_INTEGRATION_KEYS.get(environment)
    if not integration_key:
        abort(500, "Integration key not found for the specified environment")

    external_api_url = "https://example.com/download_logs"
    headers = {"Authorization": f"Bearer {integration_key}"}

    try:
        response = requests.get(external_api_url, headers=headers)
        response.raise_for_status()

        if response.status_code == 200:
            return "External logs downloaded successfully"
        else:
            abort(response.status_code, "Failed to download external logs")

    except requests.RequestException as e:
        abort(500, "Error occurred while making a request to the external API")

@app.route('/api_1')
def api_call():
    log_message = generate_log()
    print(f"Operation log: {log_message}")
    time.sleep(0.5)
    return f"completed: {log_message}"

@app.route('/health_check')
def health_check():
    return f"healthy"

if __name__ == '__main__':
    app.run(debug=True)
