FROM nginx:1.21.1

This is a capstone project 
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80


