# BASH Configuration

A default personalized configuration of bash for enhanced shell productivity and customization.

## Overview

This repository contains a curated bash configuration setup designed to provide a personalized shell environment with useful aliases, functions, and settings out of the box.

## Features

- Custom shell aliases and functions
- Personalized bash settings
- Easy-to-extend configuration structure

## Installation

1. Clone the repository **renaming** it:
```bash
git clone https://github.com/aale01/BASH_config.git ~/.bashrc.d
```

2. You just have to write the following line at the end of your personal `~/.bashrc` file located in your home in order not to lose your configurations:
```bash
source ~/.bashrc.d/.bashrc
```
   or enter the following command:
```bash
echo "source ~/.bashrc.d/.bashrc" >> ~/.bashrc
```

3. Reload your bash configuration:
```bash
source ~/.bashrc
```

## Configuration Files

This repository includes bash configuration files that can be sourced or copied to your environment.

## Customization

To customize the configuration:

1. Edit the relevant files in the repository
2. Test changes by sourcing the files: `source ~/.bashrc`
3. Commit and push changes to version control

## Usage

Once installed, your bash environment will be configured with the settings defined in this repository. Refer to the individual configuration files for specific features and aliases.

## Contributing

Feel free to fork this repository and submit pull requests with improvements or additional configurations.

## License

This project is open source and available under the MIT License.

## Contact

For questions or suggestions, please open an issue in the repository.
