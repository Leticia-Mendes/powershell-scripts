# Powershell Scripts

This repository has some powershell scripts I wrote. Among them, I would like to highlight [CreateGitHubRelease.ps1](https://github.com/Leticia-Mendes/powershell-scripts/blob/main/CreateGitHubRelease.ps1)

## **PowerShell Release Creation Script**

This PowerShell script automates the process of creating releases on GitHub for a list of repositories. It reads a YAML file containing repository names and versions, calls the GitHub API to create releases, and writes the information to a CSV file.

## **Getting Started**

To use this script, follow these step

1. Clone or download the script from the repository.
2. Open the script file (**`CreateGitHubRelease.ps1`**) in a text editor of your choice.

## **Configuration**

Before running the script, you need to provide some configuration settings:

1. Set the environment variables:
    - **`release_name`**: The name of the release to be created. This should be set as an environment variable (**`$env:release_name`**).
    - **`token`**: Your GitHub personal access token. This token should have the necessary permissions to create releases on the repositories. Set it as an environment variable (**`$env:token`**).
    - **`user`**: Your GitHub username. Set it as an environment variable (**`$env:user`**).
2. Create a YAML file (**`release-versions.yml`**) containing the repository names and versions. The file should be structured like this:

repos-list-A:
  ansible-playbooks: latest
  custom-github-action: latest
repos-list-B:
  powershell-scripts: latest
  python-scripts: latest

3. Save the YAML file in the same directory as the script.


Certainly! Here's a README file explaining the PowerShell script you provided:

PowerShell Release Creation Script
This PowerShell script automates the process of creating releases on GitHub for a list of repositories. It reads a YAML file containing repository names and versions, calls the GitHub API to create releases, and writes the information to a CSV file.

Prerequisites
Before running the script, make sure you have the following:

PowerShell installed on your system.
PowerShell module powershell-yaml installed. You can install it by running the following command:
powershell
Copy code
Install-Module powershell-yaml -Force
Getting Started
To use this script, follow these steps:

Clone or download the script from the repository.
Open the script file (script.ps1) in a text editor of your choice.
Configuration
Before running the script, you need to provide some configuration settings:

Set the environment variables:

release_name: The name of the release to be created. This should be set as an environment variable ($env:release_name).
token: Your GitHub personal access token. This token should have the necessary permissions to create releases on the repositories. Set it as an environment variable ($env:token).
user: Your GitHub username. Set it as an environment variable ($env:user).
Create a YAML file (release-versions.yml) containing the repository names and versions. The file should be structured like this:

yaml
Copy code
repository1: version1
repository2: version2
repository3: version3
Save the YAML file in the same directory as the script.

Running the Script
To run the script, follow these steps:

Open a PowerShell terminal.
Navigate to the directory where the script is located.
Run the following command:
powershell
Copy code
.\CreateGitHubRelease.ps1
The script will perform the following actions:

Install the powershell-yaml module if it is not already installed.
Create a CSV file (ReleaseCreation.csv) to store release information.
Read the repository names and versions from the release-versions.yml file.
For each repository, it will do the following:
If the version is set to "latest," it will fetch the latest tag from the GitHub API.
Create a new release on GitHub with the specified tag name, release name, and body message.
Retrieve and display the details of the created release.
Get the latest commit SHA from the main branch.
Compare the commit SHA of the tag with the latest commit SHA of the main branch.
Display the comparison status, ahead by, and behind by information.
Append the release information to the CSV file (ReleaseCreation.csv).
Display a separator between each repository's output.
If any errors occur during the process, an error message will be displayed.
