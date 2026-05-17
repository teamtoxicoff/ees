FROM node:18-alpine

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the project
COPY . .

# Expose the port Render will use
EXPOSE 3000

CMD ["node", "server.js"]
