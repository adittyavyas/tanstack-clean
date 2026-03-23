FROM node:22-alpine

WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm ci

# Copy source and build
COPY . .
RUN npm run build

# Expose the port TanStack Start serves on
EXPOSE 3000

# Start the built server
CMD ["node", ".output/server/index.mjs"]
