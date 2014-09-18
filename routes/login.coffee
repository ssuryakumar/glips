# login

exports.sendLogin = (req,res) ->
  name = req.param('username')
  pass = req.param('password')
  
  res.render "login", {name,pass};

#error Message
exports.errorMessage = (req,res) ->
    res.send('You are not authorized to view this page ');