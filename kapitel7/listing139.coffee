http = require 'http'

http.createServer (request, response) ->
	response.writeHead 200, 'Content-Type': 'text/plain'
	response.end "Hello World!"
.listen 8080

console.log "Hello World Webserver running on http://localhost:8080"
