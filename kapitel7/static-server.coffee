http = require("http")
url = require("url")
path = require("path")
fs = require("fs")

mimeTypes =
  ".html": "text/html"
  ".css": "text/css"
  ".js": "text/javascript"
  ".png": "image/png"
  ".jpg": "image/jpeg"

console.log typeof mimeTypes

rootdir = process.argv[2] or process.cwd()

http.createServer((request, response) ->
  pathname = url.parse(request.url).pathname
  filename = path.join(rootdir, pathname)

  fs.exists filename, (exists) ->
    unless exists
      response.writeHead 404, "Content-Type": "text/plain"
      response.write "404 Not Found\n"
      response.end()
      return

    filename += "index.html" if fs.statSync(filename).isDirectory()

    fs.readFile filename, "binary", (err, file) ->
      if err
        response.writeHead 500, "Content-Type": "text/plain"
        response.write err + "\n"
        response.end()
        return

      headers = {}
      contentType = mimeTypes[path.extname(filename)]
      headers["Content-Type"] = contentType if contentType
      response.writeHead 200, headers
      response.write file, "binary"
      response.end()
      console.log "served #{filename}"
).listen 3000

console.log "Static file server running at\n  => http://localhost:3000/\nCTRL + C to shutdown"