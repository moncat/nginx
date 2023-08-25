FROM nginx:alpine
 
COPY default.conf /etc/nginx/conf.d/configfile.template
 
ENV \
    PORT=80 \
    HOST=0.0.0.0
 
EXPOSE 80
 
CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
