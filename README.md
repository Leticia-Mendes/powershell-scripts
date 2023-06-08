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
3. yaml
repository1: version1
repository2: version2
repository3: version3
