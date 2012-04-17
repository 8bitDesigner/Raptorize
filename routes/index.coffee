module.exports = (app) ->

  app.get '/', (req, res) ->
    res.render 'form', { title: 'Raptorize something' }


  app.post '/', (req, res) ->
    url = req.body.url

    if (url)
      res.redirect '/' + encodeURIComponent url
    else 
      res.redirect '/'


  app.get '/:url', (req, res) ->
    res.render "index", 
      title: 'Clever girl'
      url: req.params.url
