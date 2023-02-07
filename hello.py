def app(environ, start_response):
    """Simplest possible application object"""

    status = '200 OK'
    print(environ)
    print(environ.PATH_INFO)
    print(environ.get('QUERY_STRING'))
    data = "\n".join(environ.get('QUERY_STRING').split("&"))
    response_headers = [
        ('Content-type', 'text/plain'),
        ('Content-Length', str(len(data)))
    ]
    start_response(status, response_headers)
    return iter([data])
