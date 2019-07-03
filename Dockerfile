FROM node as builder
COPY . /
RUN npm install
RUN npm run build

FROM nginx
COPY --from=builder build /usr/share/nginx/html
