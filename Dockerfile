FROM alpine

ADD config.pb /config.pb
ADD main_worker /main_worker
RUN chmod +x /main_worker

CMD /main_worker -c /config.pb
