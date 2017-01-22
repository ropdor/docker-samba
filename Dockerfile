FROM alpine:3.5
RUN \
	apk -U add samba

RUN \
	rm -rf /var/cache/apk/*

EXPOSE 139 445
ENTRYPOINT ["/usr/sbin/smbd","-FS"]
