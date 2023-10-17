# Use an official Nginx runtime as the base image
FROM nginx:latest

# Remove the default Nginx configuration file
#RUN rm /etc/nginx/conf.d/default.conf

# Copy your HTML, JavaScript, and CSS files to the Nginx web root directory
COPY index.html /usr/share/nginx/html/
COPY assets/css/style.css /usr/share/nginx/html/assets/css/
COPY assets/css/style.css.map /usr/share/nginx/html/assets/css/
COPY assets/images/*.png /usr/share/nginx/html/assets/images/
COPY assets/images/*.jpg /usr/share/nginx/html/assets/images/
COPY assets/images/*.mp4 /usr/share/nginx/html/assets/images/
COPY assets/images/*.svg /usr/share/nginx/html/assets/images/

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

