FROM nginx:latest
RUN sed -i 's/nginx/reda/g' /usr/share/nginx/html/index.html
EXPOSE 80
