FROM node as builder
COPY . /
RUN npm install
RUN npm run build

#FROM nginx # i would like to go back to this eventually
FROM twalter/openshift-nginx
COPY --from=builder build /usr/share/nginx/html
