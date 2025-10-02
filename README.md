# Gsje

A Dynamics 365 Business Central AL extension for managing Apify actor runs and related identifiers.

## Features

- **Apify Run Management**: Process and handle Apify actor run IDs
- **Identifier Processing**: Handle custom identifiers linked to Apify runs
- **URL Generation**: Generate API and console URLs for Apify runs

## Components

### Codeunit 50000 - Gsje Apify Manager
Provides core functionality for processing Apify runs and identifiers:
- `ProcessApifyRun(RunId: Text)`: Process a specific Apify run ID
- `ProcessIdentifier(Identifier: Text)`: Process custom identifiers
- `GetApifyRunUrl(RunId: Text)`: Generate API URL for a run
- `GetApifyConsoleUrl(RunId: Text)`: Generate console URL for a run
- `CloneApifyRun(SourceRunId: Text)`: Clone an existing Apify run

### Page 50000 - Gsje Apify Manager
User interface for interacting with the Apify manager functionality.

## Issue Reference

This extension specifically handles:
- Issue identifier: `lPJzzMxvBLEg7pPr6`
- Apify run ID: `1BYDIaIUoxcXwvZnO`

## Installation

1. Open the project in VS Code with the AL Language extension
2. Configure your Business Central connection in `.vscode/launch.json`
3. Build and deploy the extension to your Business Central environment