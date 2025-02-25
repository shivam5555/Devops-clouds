from flask import Flask, request, jsonify

app = Flask(__name__)

def fibonacci(n):
    a, b = 0, 1
    sequence = []
    for _ in range(n):
        sequence.append(a)
        a, b = b, a + b
    return sequence

@app.route('/fibonacci', methods=['GET'])
def get_fibonacci():
    try:
        n = int(request.args.get('n', 10))  # Default n = 10
        return jsonify({"fibonacci": fibonacci(n)})
    except ValueError:
        return jsonify({"error": "Invalid input, please provide an integer value for 'n'"}), 400

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

