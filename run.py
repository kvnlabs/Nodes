import subprocess
from tkinter import messagebox

def run_powershell_script():
    ps_script_path = r"D:\Dev\Nodes\run_quartz.ps1"

    try:
        # Execute the PowerShell script
        subprocess.run(["pwsh", "-File", ps_script_path], check=True)
        messagebox.showinfo("Success", "PowerShell script executed successfully.")
    except FileNotFoundError:
        messagebox.showerror("Error", "PowerShell executable not found. Make sure PowerShell is installed.")
    except subprocess.CalledProcessError as e:
        messagebox.showerror("Error", f"PowerShell script failed:\n{e}")
    except Exception as e:
        messagebox.showerror("Error", f"An unexpected error occurred:\n{e}")

if __name__ == "__main__":
    run_powershell_script()
