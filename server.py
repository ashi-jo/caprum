from flask import Flask, request, jsonify
from movies_output import movies_output
from book_output import book_output
from games_output import games_output
from tv_output import tv_output


app = Flask(__name__)

@app.route('/test',methods = ['GET','POST'])
def hello_world():
    if request.method == 'GET':
        return jsonify({"response": "Get request called"})
    elif request.method == 'POST':
        req_Json = request.json
        name = req_Json['name']
        return jsonify({'reponse': 'Hi '+ name})

@app.route('/movie/<string:movie>',methods=['GET','POST'])
def return_movies(movie):
    return jsonify(movies_output(movie))

@app.route('/book/<string:book>',methods=['GET','POST'])
def return_books(book):
    return jsonify(book_output(book))


@app.route('/game/<string:game>',methods=['GET','POST'])
def return_games(game):
    return jsonify(games_output(game))

@app.route('/tvs/<string:tvs>',methods=['GET','POST'])
def return_tvs(tvs):
    return jsonify(tv_output(tvs))

if __name__ == '__main__':
    app.run(debug=True,port=9090)
