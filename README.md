# Quality Control Project 🏭

Sistema di **Quality Control automatico** per ispezione componenti metallici con ML e Deep Learning.

## 📓 I 2 Notebook

### 1️⃣ `01_svm_baseline.ipynb` - ML Classico
⏱️ **15-30 minuti**

- HOG feature extraction
- SVM con Grid Search
- Usa: `sklearn`, `scikit-image`

### 2️⃣ `02_resnet18_training.ipynb` - Deep Learning  
⏱️ **20-60 minuti** (con GPU)

- ResNet18 pretrained (ImageNet)
- Transfer learning + fine-tuning
- GPU AMD (DirectML)
- Usa: `PyTorch`, `torchvision`

## 🚀 Quick Start

### 1. Attiva Environment
```bash
venv\Scripts\activate.bat
```

### 2. Apri Notebook in VS Code
1. Apri `notebooks/01_svm_baseline.ipynb`
2. Seleziona kernel: **venv**
3. Esegui celle: **Shift+Enter**

### 3. Ripeti per ResNet18
Stesso processo con `02_resnet18_training.ipynb`

## 📁 Struttura

```
Progetto_Quality_Control/
├── data/raw/              # 👈 Scarica da Kaggle
│   ├── train/ok/
│   ├── train/def_front/
│   ├── test/ok/
│   └── test/def_front/
├── notebooks/             # 👈 USA QUESTI!
│   ├── 01_svm_baseline.ipynb
│   └── 02_resnet18_training.ipynb
├── results/               # Output automatico
├── requirements.txt
└── README.md
```

## 📊 Dataset

**Casting Product Image Data** (Kaggle):
- https://www.kaggle.com/datasets/ravirajsinh45/real-life-industrial-dataset-of-casting-product
- 6,600 train + 700 test images
- 300×300 grayscale
- 2 classi: `ok` / `defective`

## 🎯 Risultati Attesi

| Metrica | SVM | ResNet18 |
|---------|-----|----------|
| Accuracy | ~85-90% | ~95-98% |
| Training | 15-30min | 20-60min |

## 💡 Tips

✅ Notebook **self-contained** - zero dipendenze esterne  
✅ Modifica hyperparameters direttamente nelle celle  
✅ Output salvati in `results/`  
✅ GPU automatica (se disponibile)

## 🛠️ Troubleshooting

**GPU non funziona?**
```bash
python -c "import torch_directml; print(torch_directml.device())"
```

**Out of memory?**  
Riduci `BATCH_SIZE` da 32 → 16 nel notebook

**Dipendenze mancanti?**
```bash
pip install -r requirements.txt
```

---

**Pronto!** Apri i notebook e inizia 🚀
