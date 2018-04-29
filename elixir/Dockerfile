FROM elixir:latest

ENV APP /opt/app/

RUN mkdir -p $APP
WORKDIR $APP

RUN mix local.hex --force

COPY . $APP
RUN mix deps.get
RUN mix compile
