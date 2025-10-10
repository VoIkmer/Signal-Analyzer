# 🔍 FFT Signal Reconstruction and Analysis

This MATLAB project performs **signal reconstruction** using the **Fast Fourier Transform (FFT)** from a `.txt` file containing time and amplitude data.  
It allows you to visualize the **original signal**, its **FFT approximation**, and analyze the **Mean Squared Error (MSE)** between them.

---

## 🧠 Overview

The script:
1. Loads a signal from a `.txt` file (with columns: **time** and **amplitude**).  
2. Automatically adjusts the data orientation if needed.  
3. Applies **FFT** to transform the signal into the frequency domain.  
4. Reconstructs the signal using a selected number of harmonics.  
5. Calculates and plots the **Mean Squared Error (MSE)** between the original and reconstructed signals.  
6. Displays a **table of Fourier coefficients** (`aₙ` and `bₙ`).

---

## 🧩 Folder Structure

```
📂 FFT_Signal_Reconstruction
├── Signal Samples/
│   └── curve1.txt          # Example signal file
├── analog_2_continuos.m  # Main MATLAB script
└── README.md                # Project documentation
```

---

## ⚙️ Requirements

- **MATLAB R2020a** or later (recommended)
- Basic understanding of Fourier analysis
- The input `.txt` file must contain **two columns**:
  - **Column 1:** Time values  
  - **Column 2:** Amplitude values  

Example file format (`curve1.txt`):

```
0.00  0.12
0.01  0.15
0.02  0.10
0.03  0.05
...
```

---

## 🚀 How to Use

1. **Clone or download** this repository to your computer.  
2. Place your signal file (e.g., `curve1.txt`) inside the folder `Signal Samples/`.  
3. Open MATLAB and run the main script:

   ```matlab
   analog_2_continuos
   ```

4. The script will:
   - Load and process the signal.
   - Plot:
     - The **original vs reconstructed** signal.
     - The **Mean Squared Error (MSE)**.
   - Display a **table** with the Fourier coefficients.

---

## 📊 Output Example

### 1️⃣ Original vs FFT-Reconstructed Signal
A plot comparing the input signal (blue) and its FFT reconstruction (red dashed).

### 2️⃣ Mean Squared Error
A plot showing the squared error between the signals and the overall MSE value.

### 3️⃣ Coefficient Table
Displayed in the MATLAB console:

| aₙ (Real) | bₙ (Imag) |
|------------|------------|
| 0.1234     | 0.0000     |
| 0.0876     | -0.0453    |
| ...        | ...        |

---

## 🧠 Key Variables

| Variable | Description |
|-----------|--------------|
| `t` | Time vector (s) |
| `x` | Original signal amplitude |
| `X_fft` | FFT coefficients |
| `num_harmonics` | Number of harmonics used for reconstruction |
| `x_rebuilt` | Signal reconstructed from FFT |
| `error_mse` | Mean Squared Error between signals |
| `coefficients` | Table containing real (`aₙ`) and imaginary (`bₙ`) parts |

---

## 🧾 Notes

- The number of harmonics (`num_harmonics`) can be manually adjusted to avoid the **Gibbs phenomenon**.
- If the file has **more than two columns**, it will be **automatically transposed** to the correct format.
- The script uses `'symmetric'` inverse FFT for real-valued reconstruction.

---

## 🧑‍💻 Author

**Carlos Eduardo**  
Electrical Engineering Student | MATLAB & Signal Processing Enthusiast  

📧 Contact: [cguimaraesbarbosa03@gmail.com]  
🌐 GitHub: [VoIkmer](https://github.com/VoIkmer)

---

## 📚 License

This project is licensed under the **MIT License** — feel free to use, modify, and share it.
