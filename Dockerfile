FROM nginx
COPY . /usr/share/nginx/html
Expose 80
CMD ["nginx", "-g", "daemon off;"]
