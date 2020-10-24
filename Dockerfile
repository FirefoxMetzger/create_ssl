FROM alpine
LABEL Author Sebastian Wallkoetter (sebastian@wallkoetter.net)

RUN apk update \
  && apk add --no-cache openssl; \
  mkdir certs

ADD gen_certificate.sh config.cfg /
RUN dos2unix gen_certificate.sh
CMD ["/bin/sh", "gen_certificate.sh"]