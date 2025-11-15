# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [6.0.0] - 2024-11-15

### Added
- Wrapper script (`bin/analog`) that automatically sets `LOGLIB` environment variable
- Automatic opening of `lesson1.lgf` tutorial for first-time users
- Help option (`--help` or `-h`) with usage information
- Dynamic window naming based on program name (analog/analog-console vs diglog/diglog-console)
- Browser-based help system (replaces xterm-based help)
- WSL2 detection and Windows browser integration for help system
- Comprehensive keyboard shortcuts documentation in README
- Screenshots of analog and analog-console windows
- Version information section in README
- CHANGELOG.md for tracking changes
- Top-level Makefile with `build`, `clean`, and `check` targets
- Improved dependency checking in Makefile
- `.gitignore` to exclude build artifacts and binaries

### Fixed
- Fixed X11 font errors by documenting required font packages (xfonts-base, xfonts-75dpi, xfonts-100dpi)
- Fixed segfault in `XSetCommand()` by using proper `char **argv` array instead of `char (*)[256]`
- Fixed window naming to correctly display "analog" and "analog-console" when run via wrapper script
- Fixed configuration file discovery by setting `LOGLIB` environment variable automatically
- Updated version number from 5.61 to 5.66 in source code for consistency

### Changed
- Updated version to 6.0.0 for this fork/modification
- Removed compiled binaries from git tracking (now in `.gitignore`)
- Improved build system with better error messages and dependency checks
- Enhanced README with comprehensive documentation including:
  - Keyboard shortcuts reference
  - Configuration files documentation
  - Sample circuits information
  - Installation instructions for modern Linux systems

### Security
- No security-related changes in this release

## [5.66] - Original Chipmunk Release

This version represents the original Chipmunk tools (version 5.66) from the official source at https://john-lazzaro.github.io/chipmunk/

### Original Components
- LOG: Circuit editing and simulation system
- AnaLOG: Analog circuit simulator
- DigLOG: Digital circuit simulator
- Loged: Gate editor for creating custom gate icons
- SPICE converter: Version 1.0 Beta

### Original Authors
- Dave Gillespie
- John Lazzaro
- Rick Koshi
- Glenn Gribble
- Adam Greenblatt
- Maryann Maher

