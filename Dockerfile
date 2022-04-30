FROM node:14

# Create folder for the project
WORKDIR /usr/src/app

# Install the package
COPY package*.json ./

# Install dependencies (not devDep)
RUN npm install --only=prod

# Bundle app source
COPY . .

EXPOSE 3000
CMD ["node", "app.js"]