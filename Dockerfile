FROM node:14-stretch-slim as build
WORKDIR /app
COPY . /app
RUN npm install
RUN CI= npm run build

FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html