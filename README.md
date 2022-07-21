
# Hyperparameters fine-tuning for classification task using PyTorch, Optuna and Ray Tune

Use Optuna/Ray Tune to optimize hyperparameters when you train a model for a classification task. Model training is done using PyTorch.


## Run Locally

Clone the project

```bash
  git clone https://github.com/tachillon/PyTorch-Hyperparameters-Fine-Tuning-For-Classification-Task
```

Go to the project directory

```bash
  cd PyTorch-Hyperparameters-Fine-Tuning-For-Classification-Task
```

Build the docker

```bash
  docker build -t mydocker:1 .
```

Run the program through the docker

```bash
 docker run --rm -it --ipc=host -w /tmp -v ${PWD}:/tmp mydocker:1 python3 <search_and_train_raytune.py/search_and_train_optuna.py>
```

