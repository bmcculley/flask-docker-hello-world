import pytest

from hello import app

@pytest.fixture
def client(request):
    client = app.test_client()
    return client

def test_default(client):
    rv = client.get('/')
    assert b'Hello, World' in rv.data
