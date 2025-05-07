import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    variable = os.getenv("VARIABLE", "World")
    return f"Hello {variable}"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

