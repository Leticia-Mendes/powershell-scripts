# Powershell Scripts

This repository has some powershell scripts I wrote. Among them, I would like to highlight [CreateGitHubRelease.ps1](https://github.com/Leticia-Mendes/powershell-scripts/blob/main/CreateGitHubRelease.ps1)

## **PowerShell Release Creation Script**

This PowerShell script automates the process of creating releases on GitHub for a list of repositories. It reads a YAML file containing repository names and versions, calls the GitHub API to create releases, and writes the information to a CSV file.

### **Getting Started**

To use this script, follow these step

1. Clone or download the script from the repository.
2. Open the script file (**`CreateGitHubRelease.ps1`**) in a text editor of your choice.

### **Configuration**

Before running the script, you need to provide some configuration settings:

1. Set the environment variables:
    - **`release_name`**: The name of the release to be created. This should be set as an environment variable (**`$env:release_name`**).
    - **`token`**: Your GitHub personal access token. This token should have the necessary permissions to create releases on the repositories. Set it as an environment variable (**`$env:token`**).
    - **`user`**: Your GitHub username. Set it as an environment variable (**`$env:user`**).
2. Create a YAML file (**`release-versions.yml`**) containing the repository names and versions. The file should be structured like this:
![image](https://github.com/Leticia-Mendes/powershell-scripts/assets/90715443/95664791-6176-4007-9c40-099c0744cb25)

3. Save the YAML file in the same directory as the script.

### **Running the Script**
To run the script, follow these steps:

1. Open a PowerShell terminal.
2. Navigate to the directory where the script is located.
3. Run the following command: `.\CreateGitHubRelease.ps1`

The script will perform the following actions:

1. Install the powershell-yaml module if it is not already installed.
2. Create a CSV file (ReleaseCreation.csv) to store release information.
3. Read the repository names and versions from the release-versions.yml file.
4. For each repository, it will do the following:
    - If the version is set to "latest," it will fetch the latest tag from the GitHub API.
    - Create a new release on GitHub with the specified tag name, release name, and body message.
    - Retrieve and display the details of the created release.
    - Get the latest commit SHA from the main branch.
    - Compare the commit SHA of the tag with the latest commit SHA of the main branch.
    - Display the comparison status, ahead by, and behind by information.
    - Append the release information to the CSV file (ReleaseCreation.csv).
    - Display a separator between each repository's output.
5. If any errors occur during the process, an error message will be displayed.

![image](https://github.com/Leticia-Mendes/powershell-scripts/assets/90715443/1cab8518-7ffb-4ed6-bda4-4bbcfb0c8c4a)


### Output
The pipeline generates the following artifacts:

ReleaseCreation.csv: This file contains the release information for each repository, including the repository name, version/tag, release name, published date, target branch, comparison status, and commit differences.
    
CSV file (ReleaseCreation.csv):

   ![image](https://github.com/Leticia-Mendes/powershell-scripts/assets/90715443/07162adc-c991-4e07-b4b7-5685e697bb3b)
