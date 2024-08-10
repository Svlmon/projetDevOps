# Utiliser une image de base de Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier README et le code du serveur
COPY README.md ./
COPY app.py ./

# Installer Flask
RUN pip install flask

# Exposer le port
EXPOSE 5000

# Démarrer le serveur Flask
CMD ["python", "app.py"]
