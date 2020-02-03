FROM node AS build
COPY ./npm .
RUN npm audit fix
RUN npm install
RUN npm run-script build

FROM nginx:alpine
COPY --from=build /build /usr/share/nginx/html
ENV BACKING=http://localhost:8000/api/v1/ingredients
ENV BACKREC=http://localhost:8000/api/v1/recipes
