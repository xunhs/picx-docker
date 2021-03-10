# refer: https://segmentfault.com/a/1190000021849643
# refer: 

FROM node:10
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

COPY ./ /app
WORKDIR /app
RUN cnpm install && cnpm run build
 
FROM nginx
RUN mkdir /app
COPY --from=0 /app/dist /app
COPY nginx.conf /etc/nginx/nginx.conf
