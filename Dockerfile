FROM mhart/alpine-node:4

WORKDIR /src
ADD . .

# If you have native dependencies, you'll need extra tools
RUN apk add --no-cache make gcc g++ python

RUN npm install

EXPOSE 3000

# locally defined script that just does:
# HUBOT_SLACK_TOKEN=secret ./bin/hubot --adapter slack
CMD ./start
