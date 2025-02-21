# Pytorch-CUDA-Install
Run your Pytorch with CUDA Support Locally. Just run shell script file in your Ubuntu System to install the newest version of Pytorch with CUDA Support

This repository contains a shell script to create a new conda environment called **"pytorch-cuda-env"** with Python version 3.13.x and install latest Pytorch along with CUDA 12.4 support on the environment in your Ubuntu System. This will enable you train your Pytorch Deep Learning Project faster with the help of GPU acceleration (NVIDIA only). The objecetive of this shell script is that you only need to run this script and Pytorch with CUDA support will be installed already.

**Note:**

1. Install the Anaconda/Miniconda on your own, this script does not install Anaconda/Miniconda in your system. You can refer to the documentation here: https://docs.anaconda.com/anaconda/install/linux/
2. Run this Script in Ubuntu
3. If you need other Python packages on this environment just install it manually using pip
4. Make sure you have stable internet during the installation process, because the installation will install many CuDNN packages which is quite large
5. To test the Tensorflow is working with CUDA Support, run the **Pytorch-CUDA_Check.ipynb** Notebook in Visual Studio Code
6. To achieve a better training performance, it is recommended to use NVIDIA RTX 30 Series GPU
7. If you want to use it on WSL2 Ubuntu, it is advised to have at least 16GB of RAM for a better performance. Also, more than 16GB of RAM can be consumed when you train Deep Learning project

**Prerequisites**

Before running the script, ensure that you have the following prerequisites installed on your system:

1. Ubuntu 18.04 or later
2. Windows WSL2 - Windows 10 19044 or higher (64-bit) (If you want to use it on WSL2)
3. TensorRT (Optional)
4. Latest NVIDIA GPU Driver Installed in Windows (Tested on RTX 3060 12 GB Desktop with 572.16 Game Ready Driver)
5. Anaconda/Miniconda

**Installation Steps**

1. **Clone the repository to your Ubuntu Directory**
   ```sh
   git clone https://github.com/Blackwhite43/Pytorch-CUDA-Install.git
   cd Pytorch-CUDA-Install
   ```
2. **Make the script executeable**
   ```sh
   chmod +x Pytorch-CUDA_Install.sh
   ./Pytorch-CUDA_Install.sh
   ```
3. After finish executing the Script, open the **Pytorch-CUDA_Check.ipynb** file in Visual Studio Code.
4. Select the installed **"pytorch-cuda-env"** environment
5. Run the Notebook **Pytorch-CUDA_Check.ipynb** on that environment

This conclude the installation process of Pytorch with CUDA Support.
More update will follows
