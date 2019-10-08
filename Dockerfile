#Install the container's OS.
FROM ubuntu:latest as HUGOINSTALL

# Install Hugo.
RUN apt-get update
RUN apt-get install hugo

FROM nginx:stable-alpine
RUN mv /usr/share/nginx/html/index.html /usr/share/html/old-index.html
COPY ./index.html /usr/share/nginx/html/index.html
EXPOSE 80
