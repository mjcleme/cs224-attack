FROM amd64/ubuntu:18.04
MAINTAINER lozovsky <lozovsky@apriorit.com>

# Refresh package repostories
RUN apt-get update

# Install essential packages for building Linux kernel modules
# as well as all available kernel headers
RUN apt-get install -y \
    build-essential \
    gcc \
    nginx \
    perl \
    curl \
    vim \
    gdb \
    psmisc \
 && exit

RUN cpan install Date/Parse.pm && exit
COPY attacklab /var/www/html
RUN cd /var/www/html; make start && exit
COPY index.html /var/www/html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
EXPOSE 15513
EXPOSE 15514
