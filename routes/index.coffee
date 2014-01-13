

#  GET home page.

 
exports.start = (req, res) ->
  res.render 'index', { title: 'Express' };
  
###
exports.sendLogin = (req,res) ->
  name = req.param('username')
  pass = req.param('password')
  res.render "login", {name,pass};
###


