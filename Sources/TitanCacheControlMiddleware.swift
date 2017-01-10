import TitanCore

public let CacheControlMiddleware: Middleware = { req, res in
  guard req.path.hasSuffix(".tar.gz") else {
    return (req, res)
  }
  var headers = res.headers
  headers.append(("Cache-Control", "public"))
  let newRes = Response(res.code, res.body, headers: headers)
  return (req, newRes)
}
