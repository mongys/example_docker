import time

print("Infinite script started. Press Ctrl+C to stop.")
try:
    while True:
        print("Running...")
        time.sleep(5)  # Интервал между итерациями
except KeyboardInterrupt:
    print("Script stopped manually.")
