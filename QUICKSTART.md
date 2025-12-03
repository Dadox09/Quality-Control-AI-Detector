# Quick Start Guide 🚀

## Setup Instructions (First Time Only)

### Step 1: Setup Environment
Run the setup script to create virtual environment and install all dependencies:
```cmd
setup_env.bat
```

This will take 5-10 minutes and will:
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

### Train Baseline Model (SVM + HOG)
```bash
python train_baseline.py
```
⏱️ Time: 10-30 minutes

### Train CNN Model
```bash
python train_cnn.py
```
⏱️ Time: 1-3 hours (monitor GPU in Task Manager)

### Compare Models
```bash
python compare_models.py
```

## Results Location
- **Models**: `models/saved_models/`
- **Plots**: `results/plots/`
- **Reports**: `results/reports/`

## Troubleshooting

**GPU not detected?**
- Update AMD drivers
- Run: `python -c "import torch_directml; print(torch_directml.device())"`

**Out of memory?**
- Edit `src/config.py` → reduce `BATCH_SIZE` to 16 or 8

**Import errors?**
- Make sure you activated the environment: `venv\Scripts\activate.bat`

## Using VS Code (Recommended IDE)

1. Open project folder in VS Code
2. Install "Python" extension
3. Select interpreter: `Ctrl+Shift+P` → "Python: Select Interpreter" → Choose `venv`
4. Run scripts: Right-click → "Run Python File in Terminal"

Enjoy! 🎉
