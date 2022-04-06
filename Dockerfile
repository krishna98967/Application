FROM nginx:latest
LABEL  "Name"="krishna" \
         "mail"="krishnavidya212gmai.com"
RUN  apt update \
     && apt install -y nginx curl wget 

COPY index.html /user/share/nginx/html
COPY script.js /user/share/nginx/html
COPY style /user/share/nginx/html

CMD [ "nginx" "-g" "daemnoff" ]