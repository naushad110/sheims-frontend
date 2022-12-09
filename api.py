#https://pythonbasics.org/flask-rest-api/
#https://www.opentechguides.com/how-to/article/python/210/flask-mysql-crud.html
#https://flask-restful.readthedocs.io/en/latest/
#pip install flask-restful
from flask import Flask, render_template, jsonify
import json 
from flask_mysqldb import MySQL
from flask_restful import Resource, Api

app = Flask(__name__)
app.secret_key = 'many-secret-key'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'assignment_db'

class my_handler(Resource):
    def get(self):
        cur = mysql.connection.cursor()
        cur.execute("SELECT  * FROM teachers")
        data = cur.fetchall()
        return jsonify(data)

mysql = MySQL(app)
api = Api(app)

#http://127.0.0.1:5000/teachers
api.add_resource(my_handler, '/teachers', endpoint='get')

if __name__ == "__main__":
    app.run(debug=True)