#!/bin/bash
# Créer et activer un environnement virtuel
python3 -m venv antenv
source antenv/bin/activate

# Installer les dépendances
pip install --upgrade pip
pip install -r requirements.txt

# Lancer Streamlit
streamlit run app.py --server.port $PORT --server.address 0.0.0.0
