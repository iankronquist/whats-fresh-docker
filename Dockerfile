FROM centos:7

MAINTAINER OSU Open Source Lab <support@osuosl.org>


RUN yum install -y python-devel python-setuptools git postgresql postgresql-devel gcc
RUN easy_install pip
RUN git clone https://github.com/osu-cass/whats-fresh-api.git /var/www/whats_fresh

RUN cd /var/www/whats_fresh && pip install -r requirements.txt
RUN python /var/www/whats_fresh/manage.py syncdb
RUN python /var/www/whats_fresh/manage.py migrate
