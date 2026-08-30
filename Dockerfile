FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html/
RUN cp "/usr/share/nginx/html/Breakfast POS Billing (1).html" /usr/share/nginx/html/index.html || true
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
