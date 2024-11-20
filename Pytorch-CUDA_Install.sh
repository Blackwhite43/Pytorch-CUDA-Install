echo "Starting script..."

# Initialize Conda
conda init
CONDA_PATH=~/anaconda3/etc/profile.d/conda.sh  # Adjust this path to your Conda installation
echo "Sourcing conda from $CONDA_PATH"

if [ -f $CONDA_PATH ]; then
    source $CONDA_PATH
    echo "Conda initialized."
else
    echo "Error: Conda initialization script not found at $CONDA_PATH"
    exit 1
fi

# Create the environment with -y to auto-confirm
ENV_NAME=pytorch-cuda-env
PYTHON_VERSION=3.12
echo "Creating environment $ENV_NAME with Python $PYTHON_VERSION"

conda create -n $ENV_NAME python=$PYTHON_VERSION -y
if [ $? -eq 0 ]; then
    echo "Conda environment '$ENV_NAME' created."
else
    echo "Error: Failed to create environment '$ENV_NAME'"
    exit 1
fi

# Activate the environment
echo "Activating environment $ENV_NAME"
conda activate $ENV_NAME
if [ $? -eq 0 ]; then
    echo "Conda environment '$ENV_NAME' activated."
else
    echo "Error: Failed to activate environment '$ENV_NAME'"
    exit 1
fi

# Pip command to install Pytorch with CUDA Support
pip install pandas
pip install scikit-learn
pip install matplotlib
pip install openpyxl
pip install datasets
pip install sentence-transformers
pip install torch torchvision torchaudio
pip install transformers[torch]
pip install numpy==1.26.4

# Deactivate the environment (optional)
conda deactivate

# Delete All Cache Folder
rm -rf ~/.cache

echo "Conda environment deactivated."
echo "Finished running commands."