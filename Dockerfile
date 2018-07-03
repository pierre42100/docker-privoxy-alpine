FROM alpine:3.7

EXPOSE 8118 9050

RUN apk --update add privoxy runit tini

COPY service /etc/service/

ENTRYPOINT ["tini", "--"]
CMD ["runsvdir", "/etc/service"]
