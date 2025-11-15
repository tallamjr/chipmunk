# Chipmunk Tools

This repository contains the Chipmunk system tools, originally developed by Dave Gillespie, John Lazzaro, and others.

## Original Source

The original Chipmunk tools are distributed via GitHub Pages:
- **Official Website**: https://john-lazzaro.github.io/chipmunk/
- **Author Contact**: john [dot] lazzaro [at] gmail [dot] com

## License

This software is distributed under the GNU General Public License (GPL) version 1 or later. See the `COPYING` files in the `psys/src/` and `log/src/` directories for the full license text.

## About Chipmunk

The Chipmunk system is a collection of software tools for Unix systems and OS/2, including:

- **Log**: A schematic editor, analog and digital simulator, and netlist generator
- **Analog**: Analog circuit simulation tool
- **Diglog**: Digital circuit simulation tool
- **Loged**: Gate editor for creating custom gate icons
- **View, Until, Wol**: Additional CAD tools

## Modifications in This Repository

This repository includes the following modifications:

- **Wrapper Scripts**: Added wrapper scripts (`analog`, `diglog-wrapper`) that automatically set the `LOGLIB` environment variable to ensure proper configuration file discovery
- **Build Fixes**: Compiled and tested on modern Linux systems with X11

## Building and Installation

### Prerequisites

- ANSI C compiler (typically GCC)
- X11 (R4, R5, or R6)
- X11 fonts: `xfonts-base`, `xfonts-75dpi`, `xfonts-100dpi`

### Installation Steps

1. Install required X11 fonts:
   ```bash
   sudo apt-get install xfonts-base xfonts-75dpi xfonts-100dpi
   xset fp rehash
   ```

2. Compile the psys libraries first:
   ```bash
   cd psys/src
   make install
   ```

3. Compile the log tools:
   ```bash
   cd log/src
   make install
   ```

4. Run the tools:
   ```bash
   cd ~/chipmunk/bin
   ./analog
   ```

The wrapper scripts automatically configure the `LOGLIB` environment variable.

## Attribution

Original authors:
- Dave Gillespie
- John Lazzaro
- Rick Koshi
- Glenn Gribble
- Adam Greenblatt
- Maryann Maher

Maintained under Unix by Dave Gillespie and John Lazzaro.

## Repository Information

This repository is maintained by the sensorsINI organization. For the original source and official documentation, please visit the [official Chipmunk website](https://john-lazzaro.github.io/chipmunk/).

