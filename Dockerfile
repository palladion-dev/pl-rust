FROM rust:1.40.0-slim-stretch

LABEL maintainer="akidsuki <akidsuki@palladion.jp>"

WORKDIR /usr/my_projects
RUN apt-get update -y \
&& apt-get upgrade -y \
&& apt-get install -y libpq-dev libssl-dev pkg-config \
&& cargo install diesel_cli --no-default-features --features postgres \
&& cargo install cargo-watch
