Boost libraries - trimmed down for Vita3K
========================================

This is a subset of Boost v1.67.0 generated using the bcp tool. To get a list of boost modules guaranteed to exist, check the build script.
Adapted from [citra-emu/ext-boost](https://github.com/citra-emu/ext-boost).

Updating this repo (on Windows)
===============================

To update the Boost version (or to add a new library) follow these steps:

  - Download Boost and extract the package, then launch Powershell and `cd` to the `boost_1_xx_0` directory.
  - Build the `bcp` tool:
    ```
    .\boostrap.bat
    .\b2 tools\bcp
    ```

  - Store the boost directory in a variable for later use: `$boost_dir = $pwd`.
  - `cd` to this repo's directory (`...\externals\boost\`)
  - Remove the existing boost from the repo: `rm -r boost` (This is only necessary if doing a Boost version upgrade, in case they removed any files in the new version.)
  - Run `.\build.cmd $boost_dir` to build a new trimmed down distro.
  - Copy the `tools/build/` directory from the untouched `boost_1_xx_0` zip to `./tools/build`. Alternatively we could include it with `bcp`'s files, but it would also include a bunch of build files (since we've built Boost build tools) that unecessarily increase the size.
  - Add/remove all files in git and commit.