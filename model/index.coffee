express = require 'express'
app = module.exports = express()
mongoose = require 'mongoose'
db = mongoose.connection;
db.on 'error', console.error;
db.open 'open', ->
    
userSchema = new mongoose.Schema(
  username:
    type: String

  password: String
)
User = mongoose.model('User',userSchema)