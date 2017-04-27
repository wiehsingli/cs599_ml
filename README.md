[![Stories in Ready](https://badge.waffle.io/psychobolt/cs599_ml.png?label=ready&title=Ready)](https://waffle.io/psychobolt/cs599_ml)
# cs599_ml

Repository for my work in a Machine Learning course

## Build Docker Image

```sh
docker build -t cs599_ml/anaconda3 .
```

> "." refers to the Dockerfile directory. The assumption is you're in the cs599_ml directory

## Terminal

```sh
docker run -it cs599_ml/anaconda3 /bin/bash
```

## Running Jupyter

```sh
docker run -it -p 8888:8888 -v <ABSOLUTE_PATH_TO>/jupyter_notebooks:/opt/notebooks cs599_ml/anaconda3
```