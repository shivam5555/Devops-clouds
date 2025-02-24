from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/add', methods=['GET'])
def add():
    num1 = request.args.get('num1', type=float)
    num2 = request.args.get('num2', type=float)

    if num1 is None or num2 is None:
        return jsonify({"error": "Missing parameters! Provide num1 and num2"}), 400

    return jsonify({"result": num1 + num2})

@app.route('/subtract', methods=['GET'])
def subtract():
    num1 = request.args.get('num1', type=float)
    num2 = request.args.get('num2', type=float)

    if num1 is None or num2 is None:
        return jsonify({"error": "Missing parameters! Provide num1 and num2"}), 400

    return jsonify({"result": num1 - num2})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

