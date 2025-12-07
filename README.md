# Tinybird Extension for Zed

This extension provides comprehensive syntax highlighting and language support for [Tinybird](https://www.tinybird.co/) files in the [Zed editor](https://zed.dev).

## Features

- **Full Syntax Highlighting**:
  - `.datasource` files (Schema definitions, Engines)
  - `.pipe` files (Nodes, SQL, Tokens)
- **Embedded SQL Support**: Rich highlighting for SQL blocks within pipes, including:
  - SQL Keywords (`SELECT`, `FROM`, `WHERE`, `GROUP BY`, etc.)
  - ClickHouse Functions (e.g., `toStartOfDay`, `toYYYYMM`)
  - **ClickHouse State Functions** (`anyState`, `countState`, `minState`, etc.)
  - Tinybird-specific templating (e.g., `{{ String(country, 'US') }}`)
- **Smart Parsing**: Handles multi-line schema definitions and complex indented blocks correctly.

## Installation

### From GitHub (Recommended)

1. Open Zed.
2. Open the Command Palette (`cmd-shift-p`) and type `extensions`.
3. Select `Zed: Extensions`.
4. Click solely on "Install Extension from SCM" if available, or clone this repository into your extensions folder:
   ```bash
   git clone https://github.com/bradlove182/zed-tinybird.git ~/Library/Application\ Support/Zed/extensions/installed/tinybird
   ```

*(Note: Once available in the official Zed Extension Registry, you will be able to search for "Tinybird" directly.)*

## Development

This extension uses a custom [Tree-sitter grammar](https://github.com/bradlove182/tree-sitter-tinybird) tailored for Tinybird's specific syntax combinations of configuration and SQL.

### Prerequisites

- [Zed](https://zed.dev)
- [Tree-sitter CLI](https://github.com/tree-sitter/tree-sitter/blob/master/cli/README.md) (optional, for working on the grammar)

### Structure

- `extension.toml`: Extension metadata and grammar configuration.
- `languages/`: Configuration and queries for specific file types.
  - `tinybird-datasource/`: Settings for `.datasource` files.
  - `tinybird-pipe/`: Settings for `.pipe` files.
- `grammars/`: (Local development only) Contains the tree-sitter grammar compilation.

### Contributions

Contributions are welcome!
- For grammar issues (parsing errors), please open issues in the [tree-sitter-tinybird](https://github.com/bradlove182/tree-sitter-tinybird) repository.
- For editor integration issues (highlighting colors, file detection), open issues in this repository.
