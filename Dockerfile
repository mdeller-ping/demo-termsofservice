FROM php:7.0-apache
EXPOSE 80
RUN apt-get update
RUN apt-get install -y git vim
RUN git clone https://github.com/mdeller-ping/demo-termsofservice.git
RUN cp -r demo-termsofservice/dist/* /var/www/html
