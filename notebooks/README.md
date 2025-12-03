# Jupyter Notebooks 📓

Questa cartella contiene 4 notebook che esplorano e confrontano approcci di Machine Learning e Deep Learning per il controllo qualità.

## 📊 I 4 Notebook

L'ordine consigliato segue una progressione logica, dal modello più semplice al confronto finale.

### 1️⃣ `00_svm.ipynb`
**Approccio #1: SVM su Pixel Grezzi** 
- **Scopo**: Creare una baseline ultra-semplice usando un classificatore SVM direttamente sui pixel delle immagini ridimensionate.
- **Stack**: `sklearn`, `scikit-image`

---

### 2️⃣ `01_svm_withHog.ipynb`
**Approccio #2: SVM con Feature HOG**
- **Scopo**: Migliorare la baseline SVM utilizzando l'estrazione di feature **HOG** (Histogram of Oriented Gradients) per descrivere meglio la forma degli oggetti.
- **Stack**: `sklearn`, `scikit-image`

---

### 3️⃣ `02_resnet18_training.ipynb`
**Approccio #3: Deep Learning con ResNet18** 
- **Scopo**: Utilizzare un'architettura di Deep Learning (ResNet18) con **transfer learning** per ottenere performance superiori.
- **Stack**: `PyTorch`, `torchvision`

---

### 4️⃣ `03_svm_vs_resnet.ipynb`
**Confronto Finale: Stress Test**
- **Scopo**: Caricare i modelli SVM e ResNet e testarli su immagini "stressate" (ruotate, spostate, con luminosità alterata) per simulare un ambiente reale e valutare la robustezza.
- **Stack**: `PyTorch`, `sklearn`

## 🎯 Come Usare

1. **Apri un notebook** in VS Code (parti da `00_svm.ipynb`).
2. **Seleziona il kernel**: `venv` (in alto a destra).
3. **Esegui le celle**: `Shift+Enter`.
4. **Output**: I risultati (modelli, grafici, metriche) vengono salvati automaticamente in `../results/`.

## 📈 Output Generati

Ogni notebook di training (`00`, `01`, `02`) crea:
- 🤖 Modello salvato (`.pkl` o `.pth`)
- 📊 Metriche (`.json`)
- 🎨 Confusion matrix (`.png`)

Il notebook di confronto (`03`) genera il grafico finale `final_comparison.png`.

## 💡 Tips

✅ **Self-contained**: Tutto il codice è nei notebook, non servono file `.py` esterni.
✅ **Modificabile**: Cambia gli iperparametri (es. `BATCH_SIZE`, `NUM_EPOCHS`) direttamente nelle celle.
✅ **GPU Ready**: `torch-directml` viene usato automaticamente se configurato.

Buon training! 🚀
