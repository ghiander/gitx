# Git Extensions

GitExt - A CLI tool for custom Git commands. GitExt augments Git with some additional predefined commands and allows definifing new commands easily by extending the file `gitx`. Any command that is not defined in `gitx` will be called using `git`. Only drawback, it does not have autocompletion for the moment.

## Installation

To install GitExt, run the following commands:

```bash
# Clone the repository
git clone https://github.com/ghiander/gitx.git

# Change to the repository directory
cd gitx

# Run the installation script
./install.sh
