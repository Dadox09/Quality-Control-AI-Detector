# Quality Control Project 🏭

Sistema di **Quality Control automatico** per ispezione componenti metallici con ML e Deep Learning.

## 📓 I 4 Notebook

Il progetto è strutturato in 4 notebook che guidano l'utente da un modello base fino a un confronto finale sulla robustezza.

1.  **`00_svm.ipynb`**: Baseline SVM semplice basata sui pixel grezzi.
2.  **`01_svm_withHog.ipynb`**: Versione migliorata con estrazione di feature **HOG**.
3.  **`02_resnet18_training.ipynb`**: Approccio **Deep Learning** con una ResNet18 pre-addestrata.
4.  **`03_svm_vs_resnet.ipynb`**: **Stress test finale** che confronta SVM e ResNet su immagini alterate per simulare condizioni reali.

## 🚀 Quick Start

### 1. Attiva Environment
```bash
venv\Scripts\activate.bat
```

### 2. Apri il Primo Notebook
1. Apri `notebooks/00_svm.ipynb` in VS Code.
2. Seleziona il kernel **venv** (in alto a destra).
3. Esegui le celle con **Shift+Enter**.

### 3. Prosegui con gli Altri
Esegui i notebook in ordine numerico per seguire il flusso logico del progetto.

## 📁 Struttura

```
Progetto_Quality_Control/
├── data/raw/              # 👈 Scarica da Kaggle
│   ├── train/ok/
│   ├── train/def_front/
│   ├── test/ok/
│   └── test/def_front/
├── notebooks/             # 👈 USA QUESTI!
│   ├── 00_svm.ipynb
│   ├── 01_svm_withHog.ipynb
│   ├── 02_resnet18_training.ipynb
│   └── 03_svm_vs_resnet.ipynb
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

## 🎯 Risultati: Lo Stress Test

Il notebook `03_svm_vs_resnet.ipynb` dimostra perché il Deep Learning è superiore in un contesto industriale. I modelli vengono testati su immagini "stressate" (ruotate, spostate, con luminosità alterata).

| Modello | Accuracy (Stress Test) |
|---|---|
| SVM (con HOG) | ~37% |
| **ResNet18** | **~99%** |

La **ResNet18 mantiene performance quasi perfette**, mentre l'SVM degrada drasticamente, dimostrando di non essere sufficientemente robusto per variazioni del mondo reale.

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
