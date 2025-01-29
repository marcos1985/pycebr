import os
import sys
import subprocess

if len(sys.argv) != 2:
    print("Sintaxe error: Inválid number of arguments.")

if not os.path.exists("builds/run"):
    subprocess.run(["cobc", "-x", "aux/run.c", "-o", "run"])
    subprocess.run(["cp", "run", "builds/run"])
    subprocess.run(["rm", "run"])


#TODO: tratar se tem sql ou não

file_path = sys.argv[1]
program_name = file_path.split("/")[-1].replace(".cbl", "").replace(".cob", "")
lib_name = program_name + ".so"

subprocess.run(["cobc", "-m", file_path])
subprocess.run(["cp", lib_name, "builds/" + lib_name])
subprocess.run(["rm", lib_name])