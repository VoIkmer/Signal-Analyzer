---

# 🔍 FFT Signal Reconstruction and Analysis

This project performs **signal reconstruction** using the **Fast Fourier Transform (FFT)**. It processes time-domain data from a `.txt` file, decomposes it into its frequency components, and reconstructs the signal using a selectable number of harmonics.

It also visualizes the trade-off between **signal fidelity** and **compression** (number of harmonics), and computes the **Mean Squared Error (MSE)**.

---

## 🧠 Key Features

* **🤖 Automated Data Handling:** Automatically detects and transposes data columns from `.txt` inputs.
* **📡 FFT Implementation:** Converts time-domain signals to the frequency domain using MATLAB’s `fft`.
* **📉 Error Analysis:** Quantifies reconstruction accuracy using MSE.
* **📊 Visualization:** Generates plots comparing the original and reconstructed signal, along with the reconstruction error.
* **🧮 Coefficient Extraction:** Outputs Fourier series coefficients ($a_n$ and $b_n$) in a structured table.

---

## ⚙️ Mathematical Background

Any periodic signal (x(t)) can be approximated using a Fourier Series:

[
x(t) \approx \frac{a_0}{2} + \sum_{n=1}^{N} \left[ a_n \cos(2\pi n f_0 t) + b_n \sin(2\pi n f_0 t) \right]
]

Where:

* (N) is the number of **harmonics** used.
* (a_n) and (b_n) are the Fourier coefficients obtained via FFT.

The **Mean Squared Error (MSE)** quantifies reconstruction accuracy:

[
MSE = \frac{1}{M} \sum_{i=1}^{M} \left( x_{\text{original}}[i] - x_{\text{reconstructed}}[i] \right)^2
]

---

## 🧩 Folder Structure

```text
📂 FFT_Signal_Reconstruction
├── Signal Samples/
│   ├── curve1.txt          # Primary test signal
│   └── noisy_data.txt      # Optional noisy signal
├── analog_2_continuos.m    # Main MATLAB processing script
└── README.md               # Documentation
```

---

## 🚀 How to Use

### 1. Prerequisites

* **MATLAB R2020a** or newer
* Input signal file (e.g., `curve1.txt`) placed in the folder: `Signal Samples/`

---

### 2. Input File Format

The `.txt` file must contain **two whitespace-separated columns**:

* **Column 1:** Time (t)
* **Column 2:** Amplitude (A)

Example:

```text
0.000  0.125
0.001  0.150
0.002  0.100
...
```

---

### 3. Execution

1. Clone the repository:

   ```bash
   git clone https://github.com/VoIkmer/FFT_Signal_Reconstruction.git
   ```
2. Open MATLAB and navigate to the project folder.
3. Run the program:

   ```matlab
   analog_2_continuos
   ```
4. Choose your `.txt` file and specify the number of harmonics when prompted.

---

## 📊 Output & Analysis

### 1️⃣ Reconstruction Plot

* **Blue Line:** Original signal
* **Red Dashed Line:** Reconstructed signal using (N) harmonics

As (N) increases, reconstruction improves—but the **Gibbs phenomenon** may appear near discontinuities.

---

### 2️⃣ Error Analysis

The script computes and displays the **MSE**:

* **Low MSE →** Good reconstruction
* **High MSE →** Increase number of harmonics

---

## 🧑‍💻 Author

**Carlos Eduardo**
Electrical Engineering Student 

* 📧 Email: **[cguimaraesbarbosa03@gmail.com](mailto:cguimaraesbarbosa03@gmail.com)**
* 🌐 GitHub: [VoIkmer](https://github.com/VoIkmer)

---

## 📚 License

This project is licensed under the **MIT License** — you are free to use, modify, and distribute this software.

---
