FROM k8sutils/node:latest

RUN npm install artillery artillery-plugin-datadog

ADD google.yml /google.yml

ENV DATADOG_API_KEY 7d0878b8ee58a219ccff11500c22c443 
ENV DEBUG=metrics,plugin:datadog 

CMD node_modules/artillery/bin/artillery run google.yml

