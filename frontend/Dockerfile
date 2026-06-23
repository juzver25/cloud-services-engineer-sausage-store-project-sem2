# build
FROM node:12-alpine as builder
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build -- --prod

# release
FROM nginx:stable-alpine
COPY --from=builder /app/dist/frontend /usr/share/nginx/html
EXPOSE 80
