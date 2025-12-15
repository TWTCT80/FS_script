#!/usr/bin/env python3

import platform
import time
from pathlib import Path

system = platform.system()

#Kontroll av OS
if system == "Windows":
    print("Windows upptäckt. Scriptet fortsätter...")

elif system == "Linux":
    print("Linux upptäckt. Detta script är avsett för windows.")
    exit()

elif system == "Darwin":
    print("macOS upptäckt. Detta script är avsett för windows.")
    exit()

else:
    print(f"Okänt operativsystem {system}. Detta script är avsett för windows. Avbryter körning.")
    exit()


eicar_str = r"X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*"
desktop = Path.home() / "Desktop"
file_path = desktop / "test.txt"

#Skapa filen på skrivbordet
with open(file_path, "w", encoding="utf-8") as f:
    f.write(eicar_str)

time.sleep(3)

#Kontrollera om filen finns kvar
try:
    with open(file_path, "r") as f:
        content = f.read()
        print("Filen finns kvar!")

except OSError as e:
    print("Kunde inte läsa filen")
    print("Ditt antivirus har troligtvis redan raderat filen")
