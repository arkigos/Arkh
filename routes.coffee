module.exports = (app) ->

    app   
        .get '/', (req, res) ->
            res.render 'index'
        .get '/favicon.ico', (req, res) ->
            res.status(404)
            res.send('No page here.')