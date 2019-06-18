import os
from flask import Flask, request, session

app = Flask(__name__)


@app.before_request
def set_session():
    session["pod"] = os.environ.get("POD_NAME", "default")


@app.route("/")
def index():
    return "Pod Id: {}".format(session["pod"])


if __name__ == "__main__":
    app.secret_key = "session_key"
    app.run(host="0.0.0.0", port=80)
