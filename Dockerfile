FROM nginx:alpine

# Copy WebGL build files
COPY index.html /usr/share/nginx/html/
COPY Build/ /usr/share/nginx/html/Build/

# nginx config for proper MIME types and headers
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
