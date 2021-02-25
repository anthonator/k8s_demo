#
# build
#

FROM ghcr.io/malomohq/elixir:1.11 AS build

ENV MIX_ENV=prod

WORKDIR /usr/local/src/k8s

COPY ../config/ ./config/
COPY ../lib/ ./lib/
COPY ../rel/ ./rel/
COPY ../mix.exs ../mix.lock ./

RUN mix deps.get \
    && mix compile \
    && mix release

#
# release
#

FROM alpine:3.13 AS release

ENV APP_HOME=/usr/local/k8s

ENV PATH=$APP_HOME/bin:$PATH

WORKDIR $APP_HOME

COPY --from=build /usr/local/src/k8s/_build/prod/rel/k8s ./

RUN apk add --no-cache ncurses=6.2_p20210109-r0 \
    && chown -R nobody: $APP_HOME

USER nobody

EXPOSE 4369

CMD ["k8s", "start"]
