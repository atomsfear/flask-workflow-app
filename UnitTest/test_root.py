import pytest

from serve import app


@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_root(client):
    res = client.get('/')
    assert res.status_code == 200
