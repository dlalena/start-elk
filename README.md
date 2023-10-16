# Elastic Stack Startup Script

This PowerShell script provides an automated way to sequentially start up your locally-hosted Elasticsearch and Kibana services. By ensuring that Elasticsearch is fully initialized before Kibana starts, this script offers a streamlined process for getting your Elastic Stack up and running.

## Prerequisites

- Windows 8.1/Windows Server 2012 R2 or later
- PowerShell (included with Windows)
- Local installations of Elasticsearch and Kibana

## Usage

1. **Configure the Script**

   Before you use the script, ensure the paths to your `elasticsearch.bat` and `kibana.bat` are correctly set. Open the script and modify the following lines:

   ```powershell
   $elasticsearchPath = "path\to\elasticsearch.bat"
   $kibanaPath = "path\to\kibana.bat" 
   ```
   Replace `path\to\elasticsearch.bat` and `path\to\kibana.bat` with the actual paths to your batch files.

2. **Run the Script**

   Navigate to the directory containing the script in PowerShell and run:

   ```powershell
   .\YourScriptName.ps1
   ```

   Make sure to replace `YourScriptName.ps1` with the actual name of your script.

3. **Monitor the Output**

   The script will provide status updates in the PowerShell console, letting you know when each service is starting and when it's ready.

## License

   This project is licensed under the GNU General Public License v3.0. See the LICENSE file for details.
