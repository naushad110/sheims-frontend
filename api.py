#https://pythonbasics.org/flask-rest-api/
from flask import Flask, render_template, jsonify
import json 

app = Flask(__name__)
app.secret_key = 'many-secret-key'

@app.route('/')
def index():
    return json.dumps({'name': 'alice',
                       'email': 'alice@outlook.com'})
@app.route('/api')
def api2():
    return jsonify({'name': 'alice',
                    'email': 'alice@outlook.com'})


app.run()