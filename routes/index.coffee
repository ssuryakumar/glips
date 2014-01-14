

#  GET home page.

 
exports.start = (req, res) ->
  res.render 'index', { title: 'Express' };
  


