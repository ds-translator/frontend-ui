# Use the official nginx image as the base image
FROM nginx:alpine

# Copy the custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Remove the default nginx index.html
RUN rm -rf /usr/share/nginx/html/*

# Copy the contents of the `public` folder into the container
COPY public /usr/share/nginx/html

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
