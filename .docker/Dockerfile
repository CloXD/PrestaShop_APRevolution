FROM prestashop/prestashop-git:7.4

# To run files with the same group as your primary user
RUN groupmod -g 1000 www-data \
  && usermod -u 1000 -g 1000 www-data

COPY /wait-for-it.sh /tmp/
COPY /docker_run_git.sh /tmp/

RUN mkdir -p /var/www/.npm
RUN chown -R www-data:www-data /var/www/.npm

# These two directories are docker mounted volumes
RUN chown -R www-data:www-data /var/www/html/vendor
RUN chown -R www-data:www-data /var/www/html/var

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -y nodejs npm

CMD ["/tmp/docker_run_git.sh"]
