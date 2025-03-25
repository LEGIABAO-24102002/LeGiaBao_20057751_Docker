# Sử dụng image Nginx chính thức
FROM nginx

# Sao chép file index.html vào thư mục mặc định của Nginx
COPY index.html /usr/share/nginx/html/index.html
