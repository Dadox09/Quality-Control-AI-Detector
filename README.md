# Quality Control Project 🏭

**Automatic Quality Control** system for metallic component inspection with ML and Deep Learning.

## 📓 The 4 Notebooks

The project is structured into 4 notebooks that guide the user from a baseline model to a final robustness comparison.

1.  **`00_svm.ipynb`**: Simple SVM baseline based on raw pixels.
2.  **`01_svm_withHog.ipynb`**: Improved version with **HOG** feature extraction.
3.  **`02_resnet18_training.ipynb`**: **Deep Learning** approach with a pre-trained ResNet18.
4.  **`03_svm_vs_resnet.ipynb`**: **Final stress test** comparing SVM and ResNet on altered images to simulate real conditions.

## 🚀 Quick Start

### 1. Activate Environment
```bash
venv\\Scripts\\activate.bat
```

### 2. Open the First Notebook
1. Open `notebooks/00_svm.ipynb` in VS Code.
2. Select the **venv** kernel (top right).
3. Run cells with **Shift+Enter**.

### 3. Continue with the Others
Run the notebooks in numerical order to follow the project's logical flow.

## 📁 Structure

```
Progetto_Quality_Control/
├── data/raw/              # 👈 Download from Kaggle
│   ├── train/ok/
│   ├── train/def_front/
│   ├── test/ok/
│   └── test/def_front/
├── notebooks/             # 👈 USE THESE!
│   ├── 00_svm.ipynb
│   ├── 01_svm_withHog.ipynb
│   ├── 02_resnet18_training.ipynb
│   └── 03_svm_vs_resnet.ipynb
├── results/               # Automatic output
├── requirements.txt
└── README.md
```

## 📊 Dataset

**Casting Product Image Data** (Kaggle):
- https://www.kaggle.com/datasets/ravirajsinh45/real-life-industrial-dataset-of-casting-product
- 6,600 train + 700 test images
- 300×300 grayscale
- 2 classes: `ok` / `defective`

## 🎯 Results: The Stress Test

The `03_svm_vs_resnet.ipynb` notebook demonstrates why Deep Learning is superior in an industrial context. Models are tested on "stressed" images (rotated, shifted, with altered brightness).

| Model | Accuracy (Stress Test) |
|---|---|
| SVM (with HOG) | ~53% |
| **ResNet18** | **~99%** |

The **ResNet18 maintains nearly perfect performance**, while the SVM degrades drastically, demonstrating it's not robust enough for real-world variations.

## 💡 Tips

✅ **Self-contained** notebooks - zero external dependencies  
✅ Modify hyperparameters directly in cells  
✅ Output saved in `results/`  
✅ Automatic GPU (if available)

## 🛠️ Troubleshooting

**GPU not working?**
```bash
python -c "import torch_directml; print(torch_directml.device())"
```

**Out of memory?**  
Reduce `BATCH_SIZE` from 32 → 16 in the notebook

**Missing dependencies?**
```bash
pip install -r requirements.txt
```

---

**Ready!** Open the notebooks and start 🚀
