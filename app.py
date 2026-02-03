from flask import Flask, render_template, request, jsonify, session
import secrets

app = Flask(__name__)
app.secret_key = secrets.token_hex(16)

@app.route('/')
def index():
    """Página de inicio con mensaje de bienvenida"""
    return render_template('index.html')

@app.route('/juego')
def juego():
    """Página del juego Sí o No"""
    return render_template('juego.html')

@app.route('/ruleta')
def ruleta():
    """Ruleta del Amor"""
    return render_template('ruleta.html')

@app.route('/rasca')
def rasca():
    """Rasca y Gana"""
    return render_template('rasca.html')

@app.route('/atrapa')
def atrapa():
    """Atrapa los Corazones"""
    return render_template('atrapa.html')

@app.route('/adivina')
def adivina():
    """Adivina la Palabra"""
    return render_template('adivina.html')

@app.route('/flores')
def flores():
    """Página con animación de flores"""
    return render_template('flores.html')

@app.route('/sorpresa')
def sorpresa():
    """Página final con el mensaje y la sorpresa"""
    return render_template('sorpresa.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
