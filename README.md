# speakerbot

A chat bot that lives in a docker container. Skeleton generated via [generator-hubot](https://github.com/github/generator-hubot), app-specific code is in scripts/speakerbot.js.

Right now it just connects to [Slack](https://slack.com), and if you private message it "I like pie" it responds with "makes a freshly baked pie".

The goal was to work out a chat bot that I could test locally on OS X with docker, but also deploy it to a Raspberry Pi 2 (rpi2) that is running docker, via [this setup](https://github.com/jrburke/rpi2-setup).

## Setup

1) Clone this repo.

2) Create a script called `start` at the root, that looks like this:

```
HUBOT_SLACK_TOKEN=x ./bin/hubot --adapter slack
```

Where `x` is the Slack authentication token you get by adding a "Hubot" integration to the Slack team, done in the Slack UI.

3) `chmod +x start`

Building of the docker image and running it is done by the Makefile.

## Makefile

The Makefile has the commands to do the docker work because I want the docker file to use a different FROM for the arm7/rpi2 case vs x86 computers. If that can be done in some other way, I am open to changing the approach.

```
make build
make run
```

CTRL+C can be used to stop it

## Future improvements

* Get the bot to speak via a local machine "say" command whatever is typed to it depending on some matching condition. Maybe any direct message to it would do the speaking.
* Explore alternate Hubot adapters, to get it to work with IRC or other messaging services.
