FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf

WORKDIR /app

#https://www.rockyourcode.com/run-docker-nginx-as-non-root-user/

#RUN mkdir /var/nginx && mkdir /var/nginx/log

RUN chown -R nginx:nginx /app && chmod -R 755 /app && \
	chown -R nginx:nginx /var/cache/nginx && \
	chown -R nginx:nginx /var/log/nginx && \
	chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
	chown -R nginx:nginx /var/run/nginx.pid

USER nginx
	

COPY . . 

EXPOSE 8080 


