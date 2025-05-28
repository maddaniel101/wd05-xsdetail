# Use official Nginx image
FROM nginx:alpine

# Set the port to 3000
ENV PORT=5000

# Copy static files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Replace the default Nginx config with a custom one
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 3000
EXPOSE 5000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]