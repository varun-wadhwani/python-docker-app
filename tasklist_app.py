from fastapi import FastAPI

app = FastAPI()

# A simple Python list to store our tasks in memory
todo_list = ["Learn Docker", "Build a FastAPI app"]

# 1. A route to see all tasks
@app.get("/tasks")
def get_tasks():
    return {"tasks": todo_list}

# 2. A route to add a new task
@app.post("/tasks")
def add_task(item: str):
    todo_list.append(item)
    return {"message": f"Added task: {item}", "current_list": todo_list}
