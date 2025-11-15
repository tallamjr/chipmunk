# Top-level Makefile for Chipmunk Tools
# This Makefile orchestrates the build of psys libraries and log tools

.PHONY: all build clean install default help check

# Default target
default: all

# Build everything (psys must be built before log)
all: build

build: psys/src/libp2c.a bin/diglog
	@echo ""
	@echo "Build complete! You can now run: ./bin/analog"

# Build psys libraries (required before building log)
psys/src/libp2c.a:
	@echo "Building psys libraries..."
	$(MAKE) -C psys/src install

# Build log tools (depends on psys)
bin/diglog: psys/src/libp2c.a
	@echo "Building log tools..."
	$(MAKE) -C log/src install

# Clean all build artifacts
clean:
	@echo "Cleaning psys..."
	$(MAKE) -C psys/src clean
	@echo "Cleaning log..."
	$(MAKE) -C log/src clean
	@echo "Clean complete!"

# Install everything (same as build)
install: build

# Check system requirements (fonts, X11, etc.)
check:
	@./check_requirements.sh

# Help target
help:
	@echo "Chipmunk Tools Makefile"
	@echo ""
	@echo "Targets:"
	@echo "  make          - Build everything (default)"
	@echo "  make build    - Build everything"
	@echo "  make clean    - Remove all build artifacts"
	@echo "  make install  - Build and install everything"
	@echo "  make check    - Check system requirements (fonts, X11, etc.)"
	@echo "  make help     - Show this help message"
	@echo ""
	@echo "After building, run: ./bin/analog"

