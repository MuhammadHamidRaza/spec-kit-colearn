#!/usr/bin/env node
const { execSync } = require('child_process');
const path = require('path');
const fs = require('fs');

console.log('Installing Python dependencies...');

const deps = ['typer', 'rich', 'platformdirs', 'readchar', 'httpx'];

try {
  execSync(`python -m pip install --quiet ${deps.join(' ')}`, {
    stdio: 'inherit'
  });
  console.log('Dependencies installed successfully!');
} catch (error) {
  console.error('Warning: Could not install Python dependencies automatically.');
  console.error('Please ensure you have Python 3.11+ and pip installed.');
  console.error('Install dependencies manually: pip install ' + deps.join(' '));
}
