import os 
import json
from subprocess import PIPE, run as subrun
from typing import Union
from fastapi import FastAPI, HTTPException

app = FastAPI()

@app.post("/{program}")
def run_program(program: str):

    module_path = f"builds/{program}.so"

    # Verify if the program exists
    if not os.path.exists(module_path):
        raise HTTPException(status_code=404, detail="Program not found.")
    
    # Run the program
    comamnd = ["builds/run", program, ""]
    complited_process = subrun(comamnd, stdout=PIPE, stderr=PIPE, universal_newlines=True)
    
    if not complited_process.returncode == 0:
         raise HTTPException(status_code=500, detail="Erro interno.")

    return {"data": json.loads(complited_process.stdout)}