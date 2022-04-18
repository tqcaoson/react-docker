FROM node:14-stretch-slim as build
WORKDIR /app
COPY package.json yarn.lock ./
RUN npm install
COPY . /app
RUN npm run build

FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html