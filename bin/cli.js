#!/usr/bin/env node
const { spawn } = require('child_process');
const path = require('path');
const fs = require('fs');
const os = require('os');

const isPython3 = () => {
  const plat = process.platform;
  if (plat === 'win32') {
    try {
      require('child_process').execSync('python3 --version', { stdio: 'ignore' });
      return 'python3';
    } catch {
      return 'python';
    }
  }
  return 'python3';
};

const pythonCmd = isPython3();

const scriptPath = path.join(__dirname, '..', 'src', 'specifyplus_cli', '__init__.py');

if (!fs.existsSync(scriptPath)) {
  console.error('Error: CLI script not found. Please reinstall the package.');
  process.exit(1);
}

const args = process.argv.slice(2);

const proc = spawn(pythonCmd, [scriptPath, ...args], {
  stdio: 'inherit',
  shell: false
});

proc.on('exit', (code) => {
  process.exit(code || 0);
});
