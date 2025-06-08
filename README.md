# SuporTech NetworkTools

**SuporTech NetworkTools** is a simple command-line utility for Windows to diagnose and repair common network issues. It provides a user-friendly menu to execute network commands, with all outputs logged to a file for troubleshooting purposes.

Developed by **SuporTech**, this tool is licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0)](http://creativecommons.org/licenses/by-sa/4.0/).

## Features
- Display network configurations (`ipconfig /all`).
- Release and renew IP address (`ipconfig /release` and `/renew`).
- Flush DNS cache (`ipconfig /flushdns`).
- Reset TCP/IP stack (`netsh int ip reset`).
- Reset Winsock (`netsh winsock reset`).
- Test connectivity to `www.suportech.com.br` (`ping www.suportech.com.br`).
- Run all commands sequentially with a single option.
- Log all command outputs to `SuporTech_NetworkTools_Log.txt` with timestamps.

## Installation
1. **Download the Scripts**:
   - Download `NetworkTools_PT.bat` (Portuguese) or `NetworkTools_EN.bat` (English) from the [releases](https://github.com/yourusername/SuporTech-NetworkTools/releases) or clone the repository:
     ```bash
     git clone https://github.com/yourusername/SuporTech-NetworkTools.git
     ```
2. **Ensure Permissions**:
   - Run the script as an administrator to execute commands like `netsh` and `ipconfig`.
3. **Place Files**:
   - Save the script (`NetworkTools_PT.bat` or `NetworkTools_EN.bat`) and `LICENSE.txt` in the same directory.

## Usage
1. Open a Command Prompt as Administrator:
   - Press `Win + X` and select "Command Prompt (Admin)" or "Windows PowerShell (Admin)".
2. Navigate to the script directory:
   ```cmd
   cd path\to\SuporTech-NetworkTools
   ```
3. Run the script:
   - For Portuguese: `NetworkTools_PT.bat`
   - For English: `NetworkTools_EN.bat`
4. Select an option (1-8) from the menu to execute network commands.
5. Check the `SuporTech_NetworkTools_Log.txt` file in the same directory for command outputs and timestamps.

## Log File
- All command outputs are saved to `SuporTech_NetworkTools_Log.txt` in the script's directory.
- Each entry includes a timestamp (e.g., `[08/06/2025 19:42:00.00]`) and the command output.
- The log is appended, preserving the history of all executions.

## License
This project is licensed under the [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/). See the [LICENSE.txt](LICENSE.txt) file for details.

You are free to:
- Share: Copy and redistribute the material in any medium or format.
- Adapt: Remix, transform, and build upon the material for any purpose, even commercially.

Under the following terms:
- Attribution: You must give appropriate credit to **SuporTech**, provide a link to the license, and indicate if changes were made.
- ShareAlike: If you remix, transform, or build upon the material, you must distribute your contributions under the same license.

## Contributing
Contributions are welcome! Please:
1. Fork the repository.
2. Create a new branch for your changes.
3. Submit a pull request with a clear description of your changes.

Ensure your contributions adhere to the CC BY-SA 4.0 license.

## Contact
For support or inquiries, visit [www.suportech.com.br](http://www.suportech.com.br) or contact SuporTech via email (replace with actual contact if available).

---

*Developed by SuporTech, 2025*
