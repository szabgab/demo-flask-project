import os
import sys
sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))
from demo import app

class TestEcho(object):
    def setup_class(self):
        self.app = app.test_client()

    def test_echo(self):
        rv = self.app.get('/')
        assert rv.status == '200 OK'
        assert b'<h1>Hello World!</h1>' in rv.data
        assert b'<form action="/echo" method="POST">' in rv.data
        assert b'You said: ' not in rv.data

