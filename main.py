from flask import Flask, render_template
import logging
import random

app = Flask(__name__)

# Setup logging
logging.basicConfig(filename='app.log', level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

@app.route('/')
def home():
    # Log the random number each time the home page is accessed
    log_data = f"User accessed home page - Random Value: {random.randint(1, 1000)}"
    app.logger.info(log_data)
    
    # Pass log_data to the HTML template
    return render_template('index.html', log_data=log_data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
