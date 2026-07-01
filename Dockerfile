FROM alpine:3.20 AS build
WORKDIR /src
COPY time-to-install.txt install-everything.sh ./
RUN ./install-everything.sh

FROM alpine:3.20 AS runtime
COPY --from=build /installed /installed
