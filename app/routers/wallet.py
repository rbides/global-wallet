from fastapi import APIRouter


router = APIRouter(
    prefix="/wallet",
    tags=["items"],
)

@router.get("/")
def hello_world():
    return "Hello World!"
