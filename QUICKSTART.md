# Quick Start Guide

## Setup Instructions (First Time Only)

### Step 1: Setup Environment
Run the setup script to create virtual environment and install all dependencies:
```cmd
setup_env.bat
```

- Create a Python virtual environment
- Install PyTorch with DirectML
- Install all required libraries
- Verify GPU support

### Step 2: Download Dataset
1. Visit: https://www.kaggle.com/datasets/ravirajsinh45/real-life-industrial-dataset-of-casting-product
2. Download the dataset (requires free Kaggle account)
3. Extract to `data/raw/` so you have:
   ```
   data/raw/train/ok/
   data/raw/train/def_front/
   data/raw/test/ok/
   data/raw/test/def_front/
   ```

## Running the Project

### Activate Environment (Every Time)
Before running any script, activate the virtual environment:
```cmd
venv\Scripts\activate.bat
```

**Import errors?**
- Make sure you activated the environment: `venv\Scripts\activate.bat`

## Using VS Code (Recommended IDE)

1. Open project folder in VS Code
2. Install "Python" extension
3. Select interpreter: `Ctrl+Shift+P` → "Python: Select Interpreter" → Choose `venv`
4. Run scripts: Right-click → "Run Python File in Terminal"

Enjoy! 🎉
