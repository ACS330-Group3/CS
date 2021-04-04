
# Central System Web Application Process

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Testing out Functions'

