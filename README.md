# CobSort

A free-format COBOL app that sorts a pre-defined file.

- Author: Ethan Kletschke
- Version: `0.0.3`
- Developed on: Windows 11
- License: MIT

## Instructions for Use

1. Decompress the `.zip` folder provided in the latest GitHub release of the app
2. Move the `Input.csv` file in the `data/` folder into the same folder as the
  `.exe`.
3. Run the `.exe` provided in the decompressed folder.
4. Open `Output.csv` to verify that the sorting is complete.

## Using Your Own Data

Feel free to test the application with your own `.csv` files. Trying different
data formats helps validate the robustness of the sorting logic and may uncover
edge cases. When doing so, please adhere to the rules listed below:

### CSV Layout

The rows of the CSV have to be as follows:

1. 4-digit ID, including leading zeros
2. User name and surname, up to 45 characters
3. 3-digit age, including leading zeros
