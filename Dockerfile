FROM rust:1.37.0-slim-stretch

RUN apt update -y \
&& apt install -y libpq-dev
WORKDIR /usr/my_projects
