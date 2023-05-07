import platform
from whoami.app import app
from fastapi.testclient import TestClient


client = TestClient(app)


def test_whoami():
    response = client.get("/whoami")
    assert response.status_code == 200
    assert response.json() == {"node": platform.node()}
