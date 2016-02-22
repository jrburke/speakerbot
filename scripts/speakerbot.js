// Description:
//   A speakerbot. This comment is like this to avoid hubot parsing for
//   CoffeeScript comments, emitting "using deprecated documentation syntax"
//   warning during startup.
module.exports = function(robot) {
  robot.hear(/I like pie/i, function (res) {
    res.emote('makes a freshly baked pie');
  });
};
