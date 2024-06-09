FROM nginx

WORKDIR /app

RUN apt update

RUN rm -rf /usr/share/nginx/html/*

COPY . /usr/share/nginx/html/

#Port 80 Enable
EXPOSE 80

#execute image nginx -g global & daemon off backgroup off

CMD [ "nginx", "-g", "daemon off;"]
