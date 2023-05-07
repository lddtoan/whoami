import platform
from fastapi import FastAPI

app = FastAPI()

@app.get('/whoami')
def whoami():
    return {'node': platform.node()}