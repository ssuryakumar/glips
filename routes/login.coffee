# login

exports.sendLogin = (req,res) ->
  name = req.param('username')
  pass = req.param('password')
  res.render "login", {name,pass};
