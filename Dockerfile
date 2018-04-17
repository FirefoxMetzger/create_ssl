FROM alpine:3.5
LABEL Author Sebastian Wallkoetter (sebastian@wallkoetter.net)

RUN apk update \
  && apk add --no-cache openssl; \
  mkdir certs

ADD gen_certificate.sh .
RUN dos2unix gen_certificate.sh
ENTRYPOINT ["/bin/sh", "gen_certificate.sh"]