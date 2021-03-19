import socketserver
import os
import pathlib
import sys

from http.server import SimpleHTTPRequestHandler, HTTPServer
from socketserver import ThreadingMixIn

PORT = 7272
DIRECTORY = 'v1'

class Handler(SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

    def do_GET(self):
        if self.path == '/':
            self.path = 'login.html'
        return SimpleHTTPRequestHandler.do_GET(self)


class DemoServer(ThreadingMixIn, HTTPServer):
    def __init__(self, port=PORT):
        HTTPServer.__init__(self, ('localhost', int(port)), Handler)

    def serve(self):
        print('Demo server starting on port %d.' % self.server_address[1])

        try:
            server.serve_forever()
        except KeyboardInterrupt:
            server.server_close()
        print('Demo server stopped.')


if __name__ == '__main__':
    DIRECTORY = sys.argv[1] if len(sys.argv) > 1 else DIRECTORY
    server = DemoServer(*sys.argv[2:])
    server.serve()
        