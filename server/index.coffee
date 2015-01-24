
coffeemiddleware = require 'connect-coffee-script'
express = require 'express'

path = require 'path'

app = express()
app.enable 'trust proxy'

http = require('http').Server(app);


#coffee and js components
app.use '/components', express.static path.join(__dirname, '../bower_components')
app.use '/images', express.static path.join(__dirname, '../src/images')
app.use '/js', coffeemiddleware
    src: "#{__dirname}/../src/scripts"
    dest: "#{__dirname}/../public/js"
    bare: true

app.use express.static(path.join(__dirname, '../public'))

app.get('/', (req, res)->
      res.sendfile('index.html');
)

http.listen(3000,  ()->
    console.log('listening on 3000')
)
   
