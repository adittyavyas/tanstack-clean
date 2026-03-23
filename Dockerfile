FROM node:22-alpine

WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm ci

# Copy source and build
COPY . .
RUN npm run build

# Expose the port TanStack Start serves on
EXPOSE 8080

# Start the built server (srvx reads the PORT env var)
ENV PORT=8080
CMD ["node", "dist/server/server.js"]
