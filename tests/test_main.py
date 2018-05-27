import os
import sys
sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))
from demo import app

class TestEcho(object):
    def setup_class(self):
        self.app = app.test_client()

    def test_main_page(self):
        rv = self.app.get('/')
        assert rv.status == '200 OK'

