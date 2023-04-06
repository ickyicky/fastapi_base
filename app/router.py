from fastapi import APIRouter
from .view.token import router as token_router
from .view.user import router as user_router


router = APIRouter(prefix="/api")
router.include_router(token_router, prefix="/token", tags=["token"])
router.include_router(user_router, prefix="/user", tags=["user"])
