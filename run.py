import os
import sys
import subprocess

if len(sys.argv) != 3:
    print("Sintaxe error: Inválid number of arguments.")

program = sys.argv[1]
area = sys.argv[2]

program_path = "builds/" + program + ".so"

if not os.path.exists(program_path):
    print("Programa not found")
    sys.exit(1)

os.chdir("builds")
subprocess.run(["./run", program, area])

