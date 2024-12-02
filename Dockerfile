# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the HTML file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html
COPY images /usr/share/nginx/html/images

# Expose port 8080
EXPOSE 8080

# Start Nginx and run it in the foreground
CMD ["nginx", "-g", "daemon off;"]

