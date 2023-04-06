FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

ENV BACKEND_URL http://localhost:8000
RUN sed -i "s#BACKEND_URL_PLACEHOLDER#$BACKEND_URL#" /etc/nginx/nginx.conf

RUN apt-get update && apt-get install -y openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/cert.key -out /etc/nginx/cert.crt -subj "/C=CL/O=Ionix/OU=Prueba/CN=localhost"

CMD ["nginx", "-g", "daemon off;"]
