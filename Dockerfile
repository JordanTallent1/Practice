#Install the container's OS.
FROM ubuntu:latest as HUGOINSTALL

# Install Hugo.
RUN apt-get update
RUN apt-get install hugo

COPY ./index.html /hugo-site

RUN hugo -v --source=/hugo-site --destination=/hugo-site/public

FROM nginx:stable-alpine
RUN mv /usr/share/nginx/html/index.html /usr/share/html/old-index.html
COPY --from=HUGOINSTALL /hugo-site/public /usr/share/nginx/html/
EXPOSE 80
