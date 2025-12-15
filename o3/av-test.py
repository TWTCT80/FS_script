#!/usr/bin/env python3

import platform

system = platform.system()

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

