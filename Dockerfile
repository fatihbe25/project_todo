FROM nginx:alphine

WORKDIR /app

COPY . .

COPY ./nginx.conf /etc/nginx/nginx.conf
