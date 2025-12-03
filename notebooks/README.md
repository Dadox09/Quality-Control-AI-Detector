# Jupyter Notebooks 📓

Due notebook semplici e autocontenuti per Quality Control:

## 📊 I 2 Notebook

### `01_svm_baseline.ipynb`
**Baseline ML Classico** (~15-30 min)

Cosa fa:
- Carica immagini dataset
- Estrae feature HOG
- Train SVM con Grid Search
- Valutazione e confusion matrix
- Salva modello e risultati

Stack: sklearn, scikit-image, matplotlib

---

### `02_resnet18_training.ipynb`  
**Deep Learning con ResNet18** (~20-60 min)

Cosa fa:
- Transfer learning da ImageNet
- Data augmentation
- Training con GPU (DirectML)
- Plot training curves
- Valutazione e confusion matrix
- Salva best model

Stack: PyTorch, torchvision, torch-directml

## 🎯 Come Usare

1. **Apri notebook** in VS Code
2. **Seleziona kernel**: `venv` (in alto a destra)
3. **Esegui celle**: Shift+Enter
4. **Output**: Salvato automaticamente in `../results/`

## 📈 Output Generati

Ogni notebook crea:
- 🤖 Modello salvato (.pkl o .pth)
- 📊 Metriche (JSON)
- 🎨 Confusion matrix (PNG)
- 📉 Training curves (PNG, solo ResNet)

## 💡 Tips

✅ **Self-contained**: Tutto il codice è nei notebook  
✅ **Modificabile**: Cambia hyperparameters direttamente  
✅ **No dependencies**: Non servono file .py esterni  
✅ **GPU ready**: DirectML attivo automaticamente

## ⚙️ Hyperparameters Principali

**SVM:**
- C, gamma, kernel (Grid Search)
- HOG: orientations, pixels_per_cell

**ResNet18:**
- `BATCH_SIZE = 32`
- `LEARNING_RATE = 0.001`
- `NUM_EPOCHS = 20`

Buon training! 🚀
