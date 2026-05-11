## hello-world-mlops

A minimalist MLOps pipeline that demonstrates automated model training using the Iris dataset and GitHub Actions.

## Overview

This project automates the lifecycle of a simple Scikit-Learn model. Every time code is pushed to the repository, a CI pipeline triggers to:
1. Set up the Python environment.
2. Upgarde PiP, Installing dependencies.
3. Train the model using the Iris dataset.
4. Push the artifact.

## Local Setup

0. Check Python Version 
```
python --version
```

1. Clone the Repository
```
git clone https://github.com
cd hello-world-mlops
```

2. Create a Virtual Environment
```
# Create the environment (named 'venv')
python -m venv venv

# Activate it:
# On Windows:
venv\Scripts\activate
# On Mac/Linux:
source venv/bin/activate
```

3.Install Dependencies
```
pip install --upgrade pip
pip install -r requirements.txt
```

4.Run the Training Pipeline
```
python src/train.py
```

## License

[MIT](https://choosealicense.com/licenses/mit/)