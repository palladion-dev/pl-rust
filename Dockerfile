FROM rust:1.37.0-slim-stretch

LABEL maintainer="akidsuki <akidsuki@palladion.jp>"

WORKDIR /usr/my_projects
RUN apt-get update -y \
&& apt-get upgrade -y \
&& apt-get install -y default-libmysqlclient-dev \
&& cargo install diesel_cli --no-default-features --features mysql
