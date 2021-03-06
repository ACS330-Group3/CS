
# Central System Web Application Process

from flask import Flask, render_template, redirect, request, url_for, Response, flash, url_for, send_from_directory
from flask_sqlalchemy import SQLAlchemy #Imports Necessary Information
import datetime
from werkzeug.utils import secure_filename
import os

UPLOAD_FOLDER = '/home/jgbroz/mysite/Site Project/Uploaded_Images'
ALLOWED_EXTENSIONS = {'txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif'}


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

app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
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
    user = db.Column(db.String(75), default='No Input')
    password = db.Column(db.String(70), default='No Input')
    img1 = db.Column(db.String(120), unique=True, default='No Input')
    img2 = db.Column(db.String(120), unique=True, default='No Input')
    img3 = db.Column(db.String(120), unique=True, default='No Input')
    img4 = db.Column(db.String(120), unique=True, default='No Input')
    img5 = db.Column(db.String(120), unique=True, default='No Input')
    img6 = db.Column(db.String(120), unique=True, default='No Input')
    status = db.Column(db.String(100), nullable=False, default='Waiting for Pick Up')

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

@app.route("/dbUpload", methods= ["GET","POST"])
def dbUpload():
    if request.method == "GET":
        return render_template("dbUploadBut.html")
    usernameDB = request.form["user"]
    passwordDB = request.form["pass"]
    pic1 = request.files['pic1']
    pic2 = request.files['pic2']
    pic3 = request.files['pic3']
    pic4 = request.files['pic4']
    pic5 = request.files['pic5']
    pic6 = request.files['pic6']
    if not pic1:
        return 'No pic Loaded', 400
    if pic1 and allowed_file(pic1.filename):
        filename1 = secure_filename(pic1.filename)
        filename2 = secure_filename(pic2.filename)
        filename3 = secure_filename(pic3.filename)
        filename4 = secure_filename(pic4.filename)
        filename5 = secure_filename(pic5.filename)
        filename6 = secure_filename(pic6.filename)
        pic1.save(os.path.join(app.config['UPLOAD_FOLDER'], filename1))
        pic2.save(os.path.join(app.config['UPLOAD_FOLDER'], filename2))
        pic3.save(os.path.join(app.config['UPLOAD_FOLDER'], filename3))
        pic4.save(os.path.join(app.config['UPLOAD_FOLDER'], filename4))
        pic5.save(os.path.join(app.config['UPLOAD_FOLDER'], filename5))
        pic6.save(os.path.join(app.config['UPLOAD_FOLDER'], filename6))
        toSend = Product(user=usernameDB, password=passwordDB, img1=filename1, img2=filename2, img3=filename3, img4=filename4, img5=filename5, img6=filename6)
        db.session.add(toSend)
        db.session.commit()
        return redirect(url_for('uploaded_file',
                                    filename=filename1))

    return 'Broke'


@app.route('/uploads/<filename>')
def uploaded_file(filename):
    return send_from_directory(app.config['UPLOAD_FOLDER'],
                               filename)

'''
retired method that wouldn't work
@app.route('/upload', methods=["GET", "POST"])
def upload2():
    if request.method == "GET":
        return render_template("upload_files.html")
    pic = request.files['pic']
    if not pic:
        return 'No pic Loaded', 400
    if pic and allowed_file(pic.filename):
        filename = secure_filename(pic.filename)
        pic.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        return redirect(url_for('uploaded_file',
                                    filename=filename))
    return 'help'
'''

'''
@app.route("/upload", methods=["GET","POST"])
def upload():
    if request.method == "GET":
        return render_template("upload_files.html")
    pic = request.files['pic']
    if not pic:
        return 'No pic Loaded', 400

    filename = secure_filename(pic.filename)
    mime = pic.mimetype
    imageData = pic.read()

    if not filename or not mime:
        return 'Bad upload!', 400

    img = Product(user="default", password="default", img=imageData, imgName=filename, mimeType=mime)
    db.session.add(img)
    db.session.commit()
    return 'weird'
    #return Response(imageData, mimetype=img.mimeType)
    #return Response(img.img, mimetype=img.mimeType)
'''



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


@app.route("/apptest")
def apptest():
    userIn = request.args.get("userIn")
    passwordIn = request.args.get("passIn")


    upload = Product(user=userIn, password=passwordIn)
    db.session.add(upload)
    db.session.commit()
    return redirect(url_for('index'))
#Apply a method to create query strings and use data to import info




#Upload Image Region

@app.route('/<int:id>')
def get_img(id):
    img = Product.query.filter_by(productID=id).first()
    if not img:
        return 'Img Not Found!', 404

    return Response(img.img, mimetype=img.mimeType)