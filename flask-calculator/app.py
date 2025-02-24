from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/add', methods=['GET'])
def add():
    num1 = request.args.get('num1', type=float)
    num2 = request.args.get('num2', type=float)
    return jsonify({"result": num1 + num2})

@app.route('/subtract', methods=['GET'])
def subtract():
    num1 = request.args.get('num1', type=float)
    num2 = request.args.get('num2', type=float)
    return jsonify({"result": num1 - num2})

@app.route('/multiply', methods=['GET'])
def multiply():
    num1 = request.args.get('num1', type=float)
    num2 = request.args.get('num2', type=float)
    return jsonify({"result": num1 * num2})

@app.route('/divide', methods=['GET'])
def divide():
    num1 = request.args.get('num1', type=float)
    num2 = request.args.get('num2', type=float)
    if num2 == 0:
        return jsonify({"error": "Cannot divide by zero"}), 400
    return jsonify({"result": num1 / num2})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

