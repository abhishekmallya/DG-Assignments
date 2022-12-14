from git import Repo


from flask import request,Flask,render_template,redirect


app = Flask(__name__)

@app.route('/')
def home():
   

    # render a view
    return render_template("home.html",homeIsActive=True,addNoteIsActive=False)





@app.route('/add_task', methods=['GET','POST'])
def addNote():

    if(request.method == "GET"):

        return render_template("add_task.html",homeIsActive=False,addNoteIsActive=True)

    elif (request.method == "POST"):

        # get the fields data
        title = request.form['title']
        description = request.form['description']
        

        f=open(title+'.txt',"w+")
        f.write(description)
        f.close()

        repo = Repo('./')
        repo.git.add('--all')
        repo.git.commit('-m', 'commit message from python script')

        # redirect to home page
        return redirect("/")




@app.route('/edit_task', methods=['GET','POST'])
def editNote():

    if request.method == "GET":

       
        return render_template('edit_task.html')

    elif request.method == "POST":

        global title 
        title = request.form['title']
        f = open(title+'.txt', "r")
        var = f.read()
        
        # redirect to home page
        return render_template('description.html',note=var)


@app.route('/save_task', methods=['GET','POST'])
def save_task():
    global title
    description = request.form['description']
    f=open(title+'.txt',"w+")
    f.write(description)
    f.close()

    repo = Repo('./')
    repo.git.add('--all')
    repo.git.commit('-m', 'commit message from python script')

    # redirect to home page
    return redirect("/")



    


app.run()




