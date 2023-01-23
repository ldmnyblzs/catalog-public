# Pebble catalog

A catalog of 271 pebbles collected from various locations.

## Files and folders in the repository

- `catalog.tex`: LaTeX source of the final document
- `generate-catalog.sh`: generates the Reeb, Morse-Smale and master graph of every pebble in `output.csv` using `graph2tikz`, compiles them using `pdflatex`, then finally builds the catalog itself
- `generate-output.sh`: calls `pebble-cli` for every pebble in `input.csv` then combines the manual and computed measurements into `output.csv`
- `images`: an individual photo of every pebble
- `input.csv`: contains the result of the manual primary equilibrium class measurement for every pebble alongside with their place of origin, material and weight
- `scans`: 3D scan of every pebble in STereoLitography (STL) format

## Generating the catalog

The scripts require that `pebble-cli` and `graph2tikz` from [libpebble](https://github.com/ldmnyblzs/libpebble-public) as well as `pdflatex` are available on your `PATH`. Then from a Bash shell you can run the following commands to generate the final `catalog.pdf`.

```
mkdir graphs graphs/dual graphs/master graphs/reeb
source generate-output.sh
source generate-catalog.sh
```
