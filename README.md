# predicting-fast-growing-firms
This project focuses on predicting the fast growth of firms using the Bisnode dataset. The goal is to develop machine learning models to identify high-growth firms based on historical data. The project is split into two main parts.

## Environment Setup

To ensure reproducibility and proper dependency management, we use a Python virtual environment named `growth`. We provide automated setup scripts for both Mac/Linux and Windows systems.

### Quick Setup

#### For Mac/Linux Users:
```bash
./setup_env.sh
```

#### For Windows Users:
```cmd
setup_env.bat
```

### What the Setup Scripts Do:
1. Check if Python 3 is installed on your system
2. Create a virtual environment named `growth`
3. Activate the virtual environment
4. Upgrade pip to the latest version
5. Install all dependencies listed in `requirements.txt`

### Manual Activation

After the initial setup, you'll need to activate the virtual environment each time you work on the project:

**Mac/Linux:**
```bash
source growth/bin/activate
```

**Windows:**
```cmd
growth\Scripts\activate.bat
```

To deactivate the virtual environment when you're done:
```bash
deactivate
```

## Reproducibility

This project follows best practices for reproducibility to ensure that results can be reliably replicated across different systems and environments.

### Environment Management

**Python Version:**
- The project is compatible with Python 3.x
- Check your Python version: `python3 --version` (Mac/Linux) or `python --version` (Windows)

**Virtual Environment:**
- We use a virtual environment named `growth` to isolate project dependencies
- This ensures that package versions don't conflict with other Python projects on your system
- The virtual environment should NOT be committed to version control (it's included in `.gitignore`)

**Package Management:**
- All Python dependencies and their specific versions are listed in `requirements.txt`
- Dependencies are pinned to exact versions (e.g., `pandas==3.0.0`) to ensure consistency
- To update dependencies, modify `requirements.txt` and reinstall: `pip install -r requirements.txt`

### Reproducing Results

To reproduce the analysis on your machine:

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd predicting-fast-growing-firms
   ```

2. **Set up the environment:**
   - Mac/Linux: `./setup_env.sh`
   - Windows: `setup_env.bat`

3. **Activate the virtual environment:**
   - Mac/Linux: `source growth/bin/activate`
   - Windows: `growth\Scripts\activate.bat`

4. **Run the analysis:**
   - Navigate to the code directory and execute the relevant scripts
   - Follow any additional instructions in the code documentation

### Troubleshooting

**Issue: Python not found**
- Ensure Python 3 is installed on your system
- Mac/Linux: Install via package manager (e.g., `brew install python3`)
- Windows: Download from [python.org](https://www.python.org/downloads/)

**Issue: Permission denied (Mac/Linux)**
- Make the script executable: `chmod +x setup_env.sh`

**Issue: Dependency installation fails**
- Ensure you have a stable internet connection
- Try upgrading pip: `pip install --upgrade pip`
- Some packages may require additional system dependencies (e.g., compilers for NumPy/SciPy)

**Issue: Virtual environment already exists**
- The setup script will prompt you to remove and recreate it
- Alternatively, manually remove it: `rm -rf growth` (Mac/Linux) or `rmdir /s growth` (Windows)
