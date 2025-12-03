# Jupyter Notebooks 📓

This folder contains 4 notebooks that explore and compare Machine Learning and Deep Learning approaches for quality control.

## 📊 The 4 Notebooks

The recommended order follows a logical progression, from the simplest model to the final comparison.

### 1️⃣ `00_svm.ipynb`
**Approach #1: SVM on Raw Pixels** 
- **Goal**: Create an ultra-simple baseline using an SVM classifier directly on the pixels of resized images.
- **Stack**: `sklearn`, `scikit-image`

---

### 2️⃣ `01_svm_withHog.ipynb`
**Approach #2: SVM with HOG Features**
- **Goal**: Improve the SVM baseline by using **HOG** (Histogram of Oriented Gradients) feature extraction to better describe object shapes.
- **Stack**: `sklearn`, `scikit-image`

---

### 3️⃣ `02_resnet18_training.ipynb`
**Approach #3: Deep Learning with ResNet18** 
- **Goal**: Use a Deep Learning architecture (ResNet18) with **transfer learning** to achieve superior performance.
- **Stack**: `PyTorch`, `torchvision`

---

### 4️⃣ `03_svm_vs_resnet.ipynb`
**Final Comparison: Stress Test**
- **Goal**: Load the SVM and ResNet models and test them on "stressed" images (rotated, shifted, with altered brightness) to simulate a real environment and evaluate robustness.
- **Stack**: `PyTorch`, `sklearn`

## 🎯 How to Use

1. **Open a notebook** in VS Code (start with `00_svm.ipynb`).
2. **Select the kernel**: `venv` (top right).
3. **Run cells**: `Shift+Enter`.
4. **Output**: Results (models, graphs, metrics) are automatically saved in `../results/`.

## 📈 Generated Output

Each training notebook (`00`, `01`, `02`) creates:
- 🤖 Saved model (`.pkl` or `.pth`)
- 📊 Metrics (`.json`)
- 🎨 Confusion matrix (`.png`)

The comparison notebook (`03`) generates the final chart `final_comparison.png`.

## 💡 Tips

✅ **Self-contained**: All code is in the notebooks, no external `.py` files needed.
✅ **Modifiable**: Change hyperparameters (e.g., `BATCH_SIZE`, `NUM_EPOCHS`) directly in cells.
✅ **GPU Ready**: `torch-directml` is used automatically if configured.

Happy training! 🚀
