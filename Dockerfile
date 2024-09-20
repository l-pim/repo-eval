# Utiliser une image Python
FROM python:3.9

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers requirements et installer les dépendances
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copier tout le code de l'application
COPY . .

# Copier le fichier tokenapi.env comme fichier .env
COPY tokenapi.env .env

# Exposer le port 8000
EXPOSE 8000

# Commande pour démarrer FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
