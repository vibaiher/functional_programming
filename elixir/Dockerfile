FROM elixir:latest

ENV APP /opt/app/

RUN mkdir -p $APP
WORKDIR $APP

RUN yes | mix local.hex

COPY . $APP
RUN mix deps.get
RUN mix compile
