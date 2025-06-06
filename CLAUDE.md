# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Homebrew tap for p6m-dev that provides formulae for installing p6m CLI tools via Homebrew. The repository follows standard Homebrew tap conventions with Formula files in the `Formula/` directory.

## Architecture

- **Formula/**: Contains Homebrew formula files (Ruby DSL) that define how to install packages
- **archetype/**: Contains an Archetect template system for generating new Homebrew formulae
  - `archetype.yaml`: Template configuration
  - `archetype.rhai`: Interactive script for collecting formula parameters
  - `contents/Formula/{{ binary }}.rb`: Template for generating new formula files

## Formula Structure

Homebrew formulae in this tap follow a multi-platform pattern:
- Support for Linux (x86_64, arm64) and macOS (x86_64, arm64)
- Download URLs point to GitHub releases with platform-specific archives
- SHA256 checksums for verification
- Simple binary installation to `bin/`
- Version test using `--version` flag

## Common Commands

### Testing Formula Changes
```bash
brew install --build-from-source ./Formula/p6m.rb
brew test p6m
```

### Generating New Formulae
Use the archetype system:
```bash
archetect render archetype/
```

### Formula Updates
When updating versions:
1. Update version number in formula
2. Update download URLs for all platforms
3. Update SHA256 hashes for all platform archives
4. Test installation on multiple platforms

## Version Management

The p6m formula tracks releases from `https://github.com/p6m-dev/p6m-cli`. When updating:
- Version should match the GitHub release tag (without 'v' prefix)
- Download URLs follow pattern: `https://github.com/p6m-dev/p6m-cli/releases/download/v{version}/p6m-v{version}-{platform}.tar.gz`