FROM node:17-stretch-slim as build
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build

FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html