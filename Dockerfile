FROM nginx:alpine

# GitHub repo থেকে index.html pull করো
RUN apk add --no-cache curl && \
    curl -o /usr/share/nginx/html/index.html https://raw.githubusercontent.com/ranacse/chatgpt-devops/main/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
