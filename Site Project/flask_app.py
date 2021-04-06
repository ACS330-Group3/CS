
# Central System Web Application Process

from flask import Flask, render_template, redirect, request, url_for
from flask_sqlalchemy import SQLAlchemy #Imports Necessary Information
import datetime

app = Flask(__name__)
app.config["DEBUG"] = True
#Sets Debugger mode on

SQLALCHEMY_DATABASE_URI = "mysql+mysqlconnector://{username}:{password}@{hostname}/{databasename}".format(
    username="jgbroz",
    password="Acs3302021",
    hostname="jgbroz.mysql.pythonanywhere-services.com",
    databasename="jgbroz$CentralSystem",
)
#Sets up DB OMR to function with mysql

app.config["SQLALCHEMY_DATABASE_URI"] = SQLALCHEMY_DATABASE_URI
app.config["SQLALCHEMY_POOL_RECYCLE"] = 299
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
#Applies Some reccommended Configuration settings

db = SQLAlchemy(app)
#Sets up the db

class Comment(db.Model):

    __tablename__ = "comments"

    id = db.Column(db.Integer, primary_key=True)
    content = db.Column(db.String(4096))
#Creates the class for the Comments Table with necessary columns
#UPDATE TO EXPECTED TABLE

class Product(db.Model):
    __tablename__ = "productDetails"

    productID = db.Column(db.Integer, primary_key=True)
    user = db.Column(db.String(75))
    password = db.Column(db.String(70))
    imageFile = db.Column(db.String(40), nullable=False, default='default.jpg')
    date = db.Column(db.DateTime)
    status = db.Column(db.String(100), nullable=False, default='Waiting for Pick Up')




@app.route("/", methods= ["GET","POST"])
def index():
    if request.method == "GET":
        return render_template("main_page.html", comments=Comment.query.all())

    comment = Comment(content=request.form["contents"])
    db.session.add(comment)
    db.session.commit()
    return redirect(url_for('index'))
#Creates simple landing page with commenting section

@app.route("/query")
def query():

    args = request.args.get("a")
    comment = Comment(content=args)
    db.session.add(comment)
    db.session.commit()
    print(args)
    return redirect(url_for('index'))
#Apply a method to create query strings and use data to import info
