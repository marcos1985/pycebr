import os
import sys
import subprocess

if len(sys.argv) != 2:
    print("Sintaxe error: Inválid number of arguments.")

file_path = sys.argv[1]
program_name = file_path.split("/")[-1].replace(".cbl", "").replace(".cob", "").replace(".c", "")

if not os.path.exists("builds/run") or program_name == "run":
    subprocess.run(["cobc", "-x", "aux/run.c", "-o", "run"])
    subprocess.run(["cp", "run", "builds/run"])
    subprocess.run(["rm", "run"])
    if program_name == "run":
        sys.exit()


#TODO: tratar se tem sql ou não
lib_name = program_name + ".so"

subprocess.run(["cobc", "-m", file_path])
subprocess.run(["cp", lib_name, "builds/" + lib_name])
subprocess.run(["rm", lib_name])