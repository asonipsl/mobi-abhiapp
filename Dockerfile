from oraclelinux:8.4
label name=abhishek.soni
run yum install httpd -y && mkdir /common /common/webapp1 /common/webapp2 /common/webapp3
COPY html-sample-app /common/webapp1/
COPY project-html-website /common/webapp2/
ADD project-html-website /common/webapp3/
COPY deploy.sh /common/
WORKDIR /common
RUN chmod +x deploy.sh
entrypoint ["./deploy.sh"]

