# Utiliser une image de base avec Node 18 
FROM node:18-alpine

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# On copie package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste du code source dans le conteneur
COPY . .

# Exposer le port
EXPOSE 3000

# Commande pour lancer l'application
CMD ["npm", "start"]
