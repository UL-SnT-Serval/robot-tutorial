import http.server
import socketserver
import os
import pathlib
import sys

PORT = 7272
DIRECTORY = 'v1'

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        print(DIRECTORY)
        super().__init__(*args, directory=DIRECTORY, **kwargs)

    def do_GET(self):
        if self.path == '/':
            self.path = 'login-' + DIRECTORY + '.html'
        return http.server.SimpleHTTPRequestHandler.do_GET(self)

class DemoServer:
    allow_reuse_address = True

    def __init__(self, port=PORT):
        self.port = int(port)

    def serve(self):
        with socketserver.TCPServer(("", self.port), Handler) as httpd:
            print('Demo server starting on port %d.' % self.port)
            httpd.serve_forever()


if __name__ == '__main__':
    DIRECTORY = sys.argv[1] if len(sys.argv) > 1 else DIRECTORY
    server = DemoServer(*sys.argv[2:])
    server.serve()
        