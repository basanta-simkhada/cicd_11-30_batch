FROM ubuntu:26.04

RUN apt update && apt upgrade -y && apt autopurge -y
RUN apt install nginx -y

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]