import os
import sys
import subprocess

print("================================================")
print("SETUP GNUCOBOL4 AND DB2 ON WSL UBUNTU VERSION")
print("================================================\n")

# Build Essenstial
print("# STEP: Install build-essential")
print("-------------------\n")
print(">> COMMAND: sudo apt install build-essential\n")
subprocess.run(["sudo", "apt", "install", "-y", "build-essential"])
print()

# GNUCOBOL4
print("# STEP: Install gnucobol4")
print("-------------------\n")
print(">> COMMAND: sudo apt install gnucobol4\n")
subprocess.run(["sudo", "apt", "install", "-y", "gnucobol4"])
print()

# Python Pip
print("# STEP: Install pip")
print("-------------------\n")
print(">> COMMAND: sudo apt install python3-pip\n")
subprocess.run(["sudo", "apt", "install", "-y", "python3-pip"])
print()

# Python Pip
print("# STEP: pip install fastapi")
print("-------------------\n")
print('>> COMMAND: pip3 install "fastapi[standard]"\n')
subprocess.run(["pip", "install", "fastapi[standard]"])
print()

# Python Pip
print("# STEP: pip install ibm_db")
print("-------------------\n")
print('>> COMMAND: pip3 install ibm_db\n')
subprocess.run(["pip", "install", "ibm_db"])
print()





#subprocess.run(["sudo", "apt", "install", "-y", "gnucobol4"])
