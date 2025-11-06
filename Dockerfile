# Use Node 18 for the build
FROM node:18 AS build

# Set working directory
WORKDIR /srv/hedera-hts-demo

# Copy package files first for caching
COPY ./package.json ./
# Remove yarn.lock if not using Yarn
# COPY ./yarn.lock ./

# Copy config files
COPY ./.browserslistrc ./
COPY ./.eslintrc.js ./
COPY ./babel.config.js ./
COPY ./vue.config.js ./
COPY ./.env ./
COPY ./.env .env.production

# Copy source and public directories
COPY ./src ./src
COPY ./public ./public

# Install dependencies
RUN npm install

# Set OpenSSL legacy provider for Node
ENV NODE_OPTIONS=--openssl-legacy-provider

# Build the Vue app
RUN npm run build

# Use nginx to serve the built app
FROM nginx:alpine

# Copy nginx config
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Remove default HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy the built Vue app from previous stage
COPY --from=build /srv/hedera-hts-demo/dist /usr/share/nginx/html
COPY --from=build /srv/hedera-hts-demo/.env /usr/share/nginx/html/.env
COPY --from=build /srv/hedera-hts-demo/.env /usr/share/nginx/html/.env.production

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
