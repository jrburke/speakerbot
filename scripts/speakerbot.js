module.exports = function(robot) {
  robot.hear(/I like pie/i, function (res) {
    res.emote('makes a freshly baked pie');
  });
};
