#!/usr/bin/env bash
currentPath=$(pwd)
activatePath="/.venv/bin/activate"
echo "Initial Proc"
python -m venv .venv
source ${currentPath}${activatePath}
pip install pandas ipykernel matplotlib seaborn scikit-learn jinja2
echo ".venv" >> .gitignore
mkdir -p data/{raw,processed,final}
mkdir notebooks
touch notebooks/notebook.ipynb
echo "Finish"