# login

exports.sendLogin = (req,res) ->
  name = req.param('username')
  pass = req.param('password')
  user = new app.get('User')(
    username: name
    password: pass
  )
  res.render "login", {name,pass};

#error Message
exports.errorMessage = (req,res) ->
    res.send('You are not authorized to view this page ');