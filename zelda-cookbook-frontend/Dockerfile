FROM node AS build
COPY ./npm .
RUN npm audit fix
RUN npm install
RUN npm run-script build

FROM nginx:alpine
COPY --from=build /build /usr/share/nginx/html
