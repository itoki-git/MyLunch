FROM mysql:5.7

RUN touch /var/log/mysql/mysqld.log

#日本語設定
RUN apt-get update \
    && apt-get install -y locales \
    && locale-gen ja_JP.UTF-8 \
    && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc