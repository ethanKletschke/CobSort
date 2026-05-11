# CobSort

A free-format COBOL app that sorts a pre-defined file.

- Author: Ethan Kletschke
- Version: `1.0.0`
- Developed on: Windows 11
- Targeted Platforms:
  - Windows 11
  - Windows 10
  - Linux (see [here](#compiling-from-source))
- License: MIT

## Instructions for Use

1. Decompress the `.zip` folder provided in the latest GitHub release of the app.
2. Run the `.exe` provided in the decompressed folder.
3. Open `Output.csv` to verify that the sorting is complete.

### Further Notes on Using This App

- The app automatically overwrites `Output.csv` every time the program runs.
- `Input.csv` doesn't have to strictly adhere to the format specified
  [here](#csv-layout), but it's recommended to stick to the format for proper
  sorting.

### Compiling from Source

If you have `cobc` and GnuCOBOL's runtime on your system, you can
clone the app and compile it from source.

This is done by:

1. Cloning the app with `git clone`
2. Navigating into the cloned project folder
3. Navigating into `scripts`
4. Running `build.cmd`

For Linux users, run the following in the project root folder:

```bash
cobc -I ./src -free -x ./src/**.cob -o ./bin/CobSort  -w -q
./bin/CobSort
```

**NOTE**: The app has NOT been tested on Linux. Proceed with caution and make
a GitHub issue for me to fix whatever the problem is.

## Using Your Own Data

Feel free to test the application with your own `.csv` files. Trying different
data formats helps validate the robustness of the sorting logic and may uncover
edge cases. When doing so, please adhere to the rules listed below:

### CSV Layout

The columns of the CSV have to be as follows:

1. 4-digit ID, including leading zeros
2. User name and surname, up to 45 characters
3. 3-digit age, including leading zeros

Do not include headers!

### Notes on Sorting Limitations

Due to COBOL’s strict handling of fixed-length fields, the program is currently 
unable to reliably sort records by age. The username field is defined as exactly
45 characters, but the CSV data does not always conform to this fixed length. 
As a result, the second comma delimiter and the age value may be incorrectly 
interpreted as part of the username field.

Several attempts were made to address this issue, but they either failed to 
resolve the parsing problem or caused the output file to become corrupted. This 
limitation will remain until a more reliable method of handling variable-length 
CSV fields is implemented.
