def app(environ, start_response):
    """Simplest possible application object"""

    status = '200 OK'
    # print(environ)
    # print(environ.PATH_INFO)
    # print(environ.get('QUERY_STRING'))
    data = "\n".join(environ.get('QUERY_STRING').split("&")).encode('utf-8')
    response_headers = [('Content-type', 'text/plain')]
    start_response(status, response_headers)
    return iter([data])
