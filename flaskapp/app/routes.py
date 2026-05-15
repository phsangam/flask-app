from flask import jsonify
from app import app

@app.route('/')
def home():
    return jsonify({"message": "Hello from Flask!", "status": "ok", "version": "1.0.0"})

@app.route('/health')
def health():
    return jsonify({"status": "healthy"}), 200

@app.route('/ready')
def ready():
    return jsonify({"status": "ready"}), 200
