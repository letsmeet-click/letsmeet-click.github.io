FROM ruby
MAINTAINER asmaps

RUN apt-get update && apt-get install -y node python-pygments

RUN useradd uid1000 -d /home/uid1000
RUN mkdir -p /home/uid1000 && chown uid1000: /home/uid1000

RUN gem install jekyll rdiscount kramdown
RUN mkdir -p /opt/code
WORKDIR /opt/code

EXPOSE 4000

CMD ["jekyll", "serve"]
