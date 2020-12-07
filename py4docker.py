from flask import Flask
app = Flask(__name__)
@app.route("/")
def hello():
    return "Namaste _/\_"
    #Execution starts from main
if __name__ == "__main__":
    app.run(host="127.0.0.1", port=int("5000"), debug=True)